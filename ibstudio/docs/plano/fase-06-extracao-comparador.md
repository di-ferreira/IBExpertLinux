# Fase 6 — Extração de metadados e comparador de esquemas

Status: pendente
Depende de: Fase 3, Fase 4
Estimativa: L (2 a 3 sessões)

## Objetivo

Gerar o script completo de criação de um banco e comparar dois esquemas,
produzindo o script de sincronização — os comandos *Extract Metadata* e
*Database Comparer* do IBExpert (parte de metadados).

## Escopo

1. **Extração (`src/core/ibextract.pas`)**
   - `TExtractOptions`: incluir descrições, generators, grants, índices, FKs,
     checks, `CREATE DATABASE`/`CONNECT`, `SET TERM`, arquivo único ou um
     arquivo por objeto, `COMMIT WORK` a cada N registros.
   - `ExtractScript(ASession, AOptions): TStringArray` na ordem de
     dependência: domains → exceptions → generators → tables → PK → índices
     → FKs → checks → views → procedures → triggers → grants → comentários.
   - Fontes: catálogo (`rdb$relations`, `rdb$relation_fields`, `rdb$fields`,
     `rdb$indices`, `rdb$relation_constraints`, `rdb$triggers`,
     `rdb$procedures`, `rdb$views`, `rdb$generators`, `rdb$exceptions`,
     `rdb$user_privileges`).
   - `SaveScript(AFiles: TStrings; ADirectory)` para o modo separado.

2. **Comparador (`src/core/ibcompare.pas`)**
   - `TSchemaModel` reaproveitando os modelos da Fase 3 (tabelas, campos,
     índices, FKs, procedures, triggers, views).
   - `CompareSchemas(A, B): TDiffList` (`somente em A`, `somente em B`,
     `diferente`) e `BuildSyncScript(ADiff; ADirection): TStringArray`.
   - Primeira versão: comparação de metadados (sem dados).

3. **Interface**
   - Menu `Ferramentas > Extrair metadados…`: opções + destino + prévia +
     `Salvar`; usa `uSqlPreview` para o script único.
   - Menu `Ferramentas > Comparar esquemas…`: duas conexões (a atual e outra
     escolhida no diálogo de conexão), lista de diferenças em árvore e
     prévia do script de sincronização.

## Passos

1. `ibextract.pas` com a ordem de dependência + testes.
2. Prévia/salvamento na UI.
3. `ibcompare.pas` (modelo + diff) + testes.
4. Diálogo de comparação e prévia do script.
5. Verificação: extrair o banco de teste e conferir os objetos.

## Critérios de aceite

- O script extraído de `TESTE_IBSTUDIO` contém `CREATE TABLE`, PK, índice,
  generator, procedure e trigger na ordem correta.
- O modo "arquivos separados" gera um arquivo por objeto.
- O comparador lista tabelas/campos diferentes entre dois esquemas e gera um
  script que, aplicado, deixa o esquema de destino igual ao de origem
  (metadados).

## Testes mínimos

- `tc_extract.pas`: ordem dos comandos e presença dos objetos em um modelo
  sintético (5 asserções).
- `tc_compare.pas`: diff de tabelas/campos e script de sincronização
  (5 asserções).
- `testfb.lpr`: extrair o banco de teste e verificar 3 marcas no script
  (`CREATE TABLE`, `CREATE PROCEDURE`, `CREATE TRIGGER`).

## Riscos

- Objetos do sistema e nomes com aspas: filtrar `rdb$system_flag` e citar
  identificadores corretamente.
- Diferenças de versão do Firebird (sintaxe de `COMMENT ON`, `CREATE OR ALTER`)
  — gerar conforme a versão do servidor.

## Commit sugerido

`feat(ibstudio): extracao de metadados e comparador de esquemas`
