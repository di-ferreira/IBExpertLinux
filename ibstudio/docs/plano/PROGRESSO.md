# Progresso do plano — IBStudio v2

Este arquivo é atualizado **ao final de cada fase** (e sempre que uma fase
mudar de estado). O plano completo está em `00-plano-geral.md`.

## Situação

| Fase | Spec | Status | Início | Conclusão | Commit |
|---|---|---|---|---|---|
| 0 | [Fundação](fase-00-fundacao.md) | concluída | 2026-10-20 | 2026-10-20 | `8ae1f06` |
| 1 | [Edição de dados](fase-01-edicao-dados.md) | concluída | 2026-10-20 | 2026-10-20 | `4651fa1` |
| 2 | [CSV](fase-02-csv.md) | pendente | — | — | — |
| 3 | [Editor de tabela](fase-03-editor-tabela.md) | pendente | — | — | — |
| 4 | [Editores de código](fase-04-editores-codigo.md) | pendente | — | — | — |
| 5 | [Administração](fase-05-administracao.md) | pendente | — | — | — |
| 6 | [Extração/comparador](fase-06-extracao-comparador.md) | pendente | — | — | — |
| 7 | [Assistente do editor](fase-07-assistente-editor.md) | pendente | — | — | — |
| 8 | [Usuários/grants](fase-08-usuarios-grants.md) | pendente | — | — | — |

Legenda de status: `pendente`, `em andamento`, `concluída`, `bloqueada`
(com o motivo no registro abaixo).

## Regra de avanço

1. O usuário autoriza a fase.
2. Implementar os passos da spec.
3. Rodar os testes mínimos da spec e `make check` (e `make testfb` /
   `make uismoke` quando a fase tocar banco ou UI).
4. Atualizar esta tabela e o registro abaixo (data, commit, desvios).
5. Commitar.
6. **Parar e aguardar o OK** para a próxima fase.

Uma fase só é marcada `concluída` com os testes mínimos verdes e o commit
feito. Se algo ficar para depois, registrar como pendência da fase seguinte.

## Registro

### Fase 0 — Fundação
- Status: concluída (2026-10-20, commit `8ae1f06`)
- Entregue:
  - `src/core/ibsettings.pas`: `TStudioSettings` (INI sem LCL, mesmas chaves
    `[ultima]` do app anterior, senha nunca gravada, `LastDirectory` para as
    fases seguintes). `uMain` passou a usar o serviço; a leitura direta do INI
    saiu da interface.
  - `src/core/ibsession.pas`: `ExecuteParams` (parâmetros nomeados), `Execute`
    na sessão da UI, `Commit`/`Rollback` explícitos e as propriedades
    `Connection`/`Transaction` para leitura.
  - `src/core/ibtypes.pas`: `TConnectionProfile.CopyFrom` (atualiza o perfil
    das configurações ao conectar).
  - `src/ui/uSqlPreview.pas`: diálogo modal de prévia de SQL (realce
    Firebird, modo somente leitura e modo confirmação) + menu
    *Ferramentas > Prévia de SQL…*.
  - `src/ui/uSqlTab.pas`: propriedade `SqlText` (texto do editor da aba).
- Testes: `tc_settings.pas` (4 casos, total do núcleo = 40), bloco
  `execucao parametrizada` no `testfb.lpr` (insert/commit/rollback/delete) e
  conferência da prévia no `uismoke.lpr`.
- Verificação: `make check`, `make test` (40/40), `make testfb` e `make
  uismoke` verdes; `make app` compila.
- Observações: sem desvio do escopo. O `word wrap` não existe em
  `TSynEdit` nesta versão do Lazarus e a variável local `SQLText` do
  autocompletar foi renomeada para `Contexto` (conflito com a nova
  propriedade `SqlText`).

### Fase 1 — Edição de dados
- Status: concluída (2026-10-20, commit `4651fa1`)
- Entregue:
  - `src/core/ibdml.pas`: `IsSimpleRelationSelect` (seleciona simples de uma
    tabela), `QuoteLiteral`, `BuildInsert`, `BuildUpdate`, `BuildDelete` e
    `IsNumericFieldType`. Os valores usam o registro `TFieldValue` (nome,
    valor, nulo, numérico) em vez de listas paralelas.
  - `src/core/ibsession.pas`: `ResolveRelationName`, `PrimaryKeyColumns` e
    `RelationFieldMetas` (nome, tipo, tamanho, precisão, escala, nulabilidade).
  - `src/core/ibtypes.pas`: registro `TFieldMeta`.
  - `src/ui/uEditRecord.pas`: diálogo modal com um editor por campo e opção
    de NULL nos campos anuláveis.
  - `src/ui/uSqlTab.pas`: barra com `Novo`, `Editar`, `Excluir`,
    `Copiar INSERT` e `Atualizar`; habilitadas apenas quando o comando é um
    `select` simples sobre uma tabela; o DML roda pela sessão da UI com
    verificação de 1 registro afetado e rollback em caso contrário; depois a
    consulta é reexecutada.
- Testes: `tc_dml.pas` (7 casos, núcleo = 47), bloco `edicao de dados` no
  `testfb.lpr` (chave primária, metadados, update/insert/delete gerados) e no
  `uismoke.lpr` (edição real de um registro conferida no banco, com
  restauração do valor, e conferência do diálogo).
- Verificação: `make check`, `make test` (47/47), `make testfb` e `make
  uismoke` verdes; barra conferida na GUI real.
- Observações/desvios:
  - A spec previa listas paralelas de campos/valores; o registro `TFieldValue`
    foi usado por ser mais seguro (evita dessincronia entre nomes e valores).
  - Tabela **sem** chave primária: a edição e a exclusão ficam desativadas
    com aviso (a spec permitia bloquear a exclusão; optou-se por bloquear
    ambas para não Affectar mais de uma linha).
  - BLOB fica somente leitura nesta fase.
  - Campos não informados na edição não entram no `UPDATE` (preserva o valor
    do banco).

### Fase 2 — CSV
- Status: pendente
- Observações: —

### Fase 3 — Editor de tabela
- Status: pendente
- Observações: —

### Fase 4 — Editores de código
- Status: pendente
- Observações: —

### Fase 5 — Administração
- Status: pendente
- Observações: —

### Fase 6 — Extração e comparador
- Status: pendente
- Observações: —

### Fase 7 — Assistente do editor
- Status: pendente
- Observações: —

### Fase 8 — Usuários e grants
- Status: pendente
- Observações: —
