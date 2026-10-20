# Fase 1 — Edição de dados na grade

Status: pendente
Depende de: Fase 0
Estimativa: L (2 a 3 sessões)

## Objetivo

Permitir editar o conteúdo de uma tabela pela interface, como o comando
*Show data…* do IBExpert: abrir a tabela, alterar um registro, incluir,
excluir e copiar o registro como `INSERT`.

## Escopo

1. **Reconhecer consulta editável**
   - `ibdml.IsSimpleRelationSelect(ASQL, out ARelation)`:
     verdadeiro quando o comando é `select ... from <uma relação>` sem
     `join`, `group by`, `union`, agregação ou subconsulta.
   - A aba de dados (aberta pelo duplo clique) passa a habilitar as ações de
     edição somente nesse caso; nos demais, a grade continua só leitura.

2. **Chave primária**
   - `TIBStudioSession.PrimaryKey(const ARelation: string): TStrings`
     (consulta a `rdb$relation_constraints` + `rdb$index_segments`,
     fallback vazio quando não há PK).
   - Sem PK: permitir editar mas avisar que o `UPDATE`/`DELETE` usará todos
     os campos como chave (ou bloquear a exclusão, conforme decisão na
     implementação).

3. **Geração de DML (núcleo puro)**
   - Nova unidade `src/core/ibdml.pas`:
     - `BuildInsert(ARelation, AFields, AValues, ANullFlags)`;
     - `BuildUpdate(ARelation, AFields, AValues, ANullFlags,
       AKeyFields, AKeyValues)`;
     - `BuildDelete(ARelation, AKeyFields, AKeyValues)`;
     - `QuoteLiteral(AValue; AKind)` para texto, número, data e NULL;
     - aspas em identificadores reutilizando `QuoteIdentifier`.

4. **Interface**
   - `src/ui/uEditRecord.pas`: diálogo modal gerado em código com um editor
     por campo (TEdit + checkbox "NULL"), tipo/nulabilidade vindos dos
     metadados; botões `Salvar`/`Cancelar` e prévia do SQL (Fase 0).
   - `uSqlTab`: barra da grade com `Novo`, `Editar`, `Excluir`,
     `Copiar INSERT` e `Atualizar`; duplo clique na linha abre o editor.
   - Após salvar/inserir/excluir, reexecutar a consulta atual e manter a
     posição aproximada.

## Passos

1. `ibdml.pas` + `tests/tc_dml.pas` (geração e aspas).
2. `PrimaryKey` em `ibsession.pas` + verificação no `testfb`.
3. `uEditRecord.pas` (diálogo).
4. Integração em `uSqlTab.pas` (ações, habilitação, refresh).
5. Teste de fumaça: editar a primeira linha de `TESTE_IBSTUDIO`.

## Critérios de aceite

- Abrir `TESTE_IBSTUDIO` por duplo clique, editar `NOME`, salvar e ver o novo
  valor na grade.
- Incluir um registro com campos nulos e excluir em seguida.
- `Copiar INSERT` coloca no clipboard um comando válido e executável.
- Consultas com join/agregação mantêm a grade somente leitura.

## Testes mínimos

- `tc_dml.pas`: insert com NULL e aspas, update com chave composta, delete,
  literal numérico/data (6 asserções).
- `testfb.lpr`: `PrimaryKey('TESTE_IBSTUDIO') = [ID]` e um `update` gerado
  alterando uma linha (2 verificações).
- `uismoke.lpr`: editar o registro 1 e conferir o valor relido (1 bloco).

## Riscos

- Tipos de campo (BLOB, TIMESTAMP) exigem conversão na UI; começar por
  texto/número/data e deixar BLOB somente leitura nesta fase.
- Sem PK, `UPDATE`/`DELETE` pode afetar mais de uma linha: confirmar antes e
  limitar a uma linha (`rows affected` > 1 → rollback e aviso).

## Commit sugerido

`feat(ibstudio): edicao de dados na grade com INSERT, UPDATE e DELETE`
