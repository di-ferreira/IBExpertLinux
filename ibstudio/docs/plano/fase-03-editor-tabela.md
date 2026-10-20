# Fase 3 — Editor de tabela (DDL)

Status: pendente
Depende de: Fase 0 (prévia/execução)
Estimativa: L (2 a 3 sessões)

## Objetivo

Criar e alterar tabelas pela interface, com prévia do script gerado antes de
executar — o editor de tabela do IBExpert (campos, chave primária, índices e
chaves estrangeiras).

## Escopo

1. **Modelo (núcleo `src/core/ibddl.pas`)**
   - `TFieldDefModel`: nome, tipo, tamanho, precisão, escala, nullable,
     default, computed, charset, descrição.
   - `TTableModel`: relação + campos + PK + índices + FKs + descrição.
   - `TFkModel`: nome, campos, tabela/campos referenciados, on update/delete.
   - `TIndexModel`: nome, campos, unique, descending, active.

2. **Geração de SQL**
   - `CreateTableSQL(AModel): TStringArray` (CREATE TABLE + PK + índices + FKs
     + COMMENT ON).
   - `AlterTableSQL(AOld, ANew): TStringArray` (ADD/ALTER/DROP COLUMN,
     add/drop constraint, create/drop index).
   - `DropTableSQL(const ARelation: string): string`.
   - Regras de compatibilidade (não permitir ALTER de tipo sem aviso; ordem
     dos comandos respeitando dependências).

3. **Leitura do catálogo**
   - `TIBStudioSession.LoadTableModel(const ARelation: string): TTableModel`
     (campos via `rdb$relation_fields`/`rdb$fields`/domínios, PK, índices,
     FKs, descrições).
   - Reutiliza o cache de metadados; invalida após executar o script.

4. **Interface (`src/ui/uTableEditor.pas`)**
   - Modal em código com abas `Campos`, `Chave primária`, `Índices`, `FKs`.
   - Grade de campos editável por diálogo (`Adicionar campo`, `Editar`,
     `Remover`, `Subir/Descer`).
   - Botões `Prévia do script` (Fase 0), `Executar`, `Cancelar`.
   - Menu `Database > Nova tabela…` e item `Editar estrutura` no menu de
     contexto da árvore (tabela).

## Passos

1. Modelos + `CreateTableSQL` + `tests/tc_ddl.pas`.
2. `AlterTableSQL` (diff) + testes de diff.
3. `LoadTableModel` + verificação no `testfb`.
4. `uTableEditor.pas` (campos e PK).
5. Índices e FKs na UI.
6. Ligar menu/árvore e validar com a tabela de teste.

## Critérios de aceite

- Criar uma tabela com PK, um índice e uma FK por script gerado, executando
  pela prévia.
- Abrir a tabela criada, adicionar um campo e executar o `ALTER` gerado.
- O script de alteração não recria objetos inalterados.
- Após executar, a árvore e o autocomplete passam a ver a nova estrutura.

## Testes mínimos

- `tc_ddl.pas`: CREATE com PK/índice/FK, ALTER com add/drop/alteração,
  identificadores com aspas (6 asserções).
- `testfb.lpr`: gerar e executar o script de uma tabela temporária, conferir
  colunas e PK (1 bloco).
- `uismoke.lpr`: abrir o editor de uma tabela e gerar a prévia (sem executar).

## Riscos

- Diferenças entre Firebird 2.5 e 3+ em `ALTER TABLE ... ALTER TYPE` e
  `COMMENT ON`; gerar comandos compatíveis e avisar quando não suportado.
- FKs exigem que a tabela referenciada exista; validar antes de executar.

## Commit sugerido

`feat(ibstudio): editor de tabela com previa de script DDL`
