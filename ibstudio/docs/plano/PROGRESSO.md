# Progresso do plano — IBStudio v2

Este arquivo é atualizado **ao final de cada fase** (e sempre que uma fase
mudar de estado). O plano completo está em `00-plano-geral.md`.

## Situação

| Fase | Spec | Status | Início | Conclusão | Commit |
|---|---|---|---|---|---|
| 0 | [Fundação](fase-00-fundacao.md) | concluída | 2026-10-20 | 2026-10-20 | `8ae1f06` |
| 1 | [Edição de dados](fase-01-edicao-dados.md) | concluída | 2026-10-20 | 2026-10-20 | `4651fa1` |
| 2 | [CSV](fase-02-csv.md) | concluída | 2026-10-20 | 2026-10-20 | `25025d2` |
| 3 | [Editor de tabela](fase-03-editor-tabela.md) | concluída | 2026-10-20 | 2026-10-20 | `9fdf618` |
| 4 | [Editores de código](fase-04-editores-codigo.md) | concluída | 2026-10-20 | 2026-10-20 | `9d39873` |
| 5 | [Administração](fase-05-administracao.md) | concluída | 2026-10-20 | 2026-10-20 | `bec0f65` |
| 6 | [Extração/comparador](fase-06-extracao-comparador.md) | concluída | 2026-10-21 | 2026-10-21 | `e6c8725` |
| 7 | [Assistente do editor](fase-07-assistente-editor.md) | concluída | 2026-10-21 | 2026-10-21 | `2dca159` |
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
- Status: concluída (2026-10-20, commit `25025d2`)
- Entregue:
  - `src/core/ibcsv.pas`: `TCsvOptions`, `TCsvTable`, `CsvEscape`,
    `CsvUnescape`, `WriteCsv`, `ReadCsv` e a conversão de codificação
    (UTF-8 e ISO-8859-1, transcodificando de verdade).
  - `src/ui/uCsvOptions.pas`: diálogo de opções (separador, cabeçalho, texto
    de NULL, codificação), reaproveitado na exportação e na importação.
  - `src/ui/uImportCsv.pas`: importação com arquivo, prévia das 10 primeiras
    linhas, tabela de destino, correspondência coluna → campo (automática
    pelo nome), inserção parametrizada em transação (commit a cada 500
    linhas) e rollback com mensagem em caso de erro.
  - `src/ui/uSqlTab.pas`: `ExportCsv` grava o resultado da aba; o cursor da
    grade é preservado durante a exportação.
  - `src/ui/uMain.pas`: menu *Consulta > Exportar CSV…* e
    *Consulta > Importar CSV…*; a última pasta usada fica nas configurações.
- Testes: `tc_csv.pas` (6 casos, núcleo = 53), bloco `importacao de CSV` no
  `testfb.lpr` (3 linhas importadas numa tabela temporária) e no
  `uismoke.lpr` (exportação do resultado com 6 colunas e 3 linhas relidas do
  arquivo).
- Verificação: `make check`, `make test` (53/53), `make testfb` e `make
  uismoke` verdes; diálogo de importação conferido na GUI real.
- Observações/desvios:
  - A spec não previa opção de leitura com/sem cabeçalho: `TCsvOptions` tem
    `WriteHeader` e `ReadHeader`.
  - O texto de NULL é aplicado na importação (campo vazio = NULL quando o
    token confere); na exportação o NULL vira o token escolhido.

### Fase 3 — Editor de tabela
- Status: concluída (2026-10-20, commit `9fdf618`)
- Entregue:
  - `src/core/ibddl.pas`: modelos (`TTableModel`, `TFieldDefModel`,
    `TIndexModel`, `TFkModel`) e geração de DDL — `CreateTableSQL`,
    `AlterTableSQL` (diff entre dois modelos), `DropTableSQL`,
    `FieldTypeSQL`, `PrimaryKeyFields` e `RefRuleName`.
  - `src/core/ibmetadata.pas`: `BaseTypeName` (nome do tipo sem tamanho).
  - `src/core/ibsession.pas`: `LoadTableModel` (campos, chave primária,
    índices e chaves estrangeiras do catálogo) e `ExecuteScript` (vários
    comandos em transação, com rollback e mensagem de erro).
  - `src/ui/uTableEditor.pas`: editor em abas (Campos, Índices, Chaves
    estrangeiras) com prévia do script e execução com confirmação; a chave
    primária é definida pela coluna "PK" da grade de campos.
  - `src/ui/uMain.pas`: menu *Banco > Nova tabela…* e item "Editar estrutura"
    no menu de contexto da árvore.
- Testes: `tc_ddl.pas` (7 casos, núcleo = 60), bloco `editor de tabela` no
  `testfb.lpr` (cria a tabela pelo script gerado, lê o modelo de volta,
  executa um `alter` e confere a coluna nova, remove a tabela) e no
  `uismoke.lpr` (o editor carrega a estrutura e a chave primária).
- Verificação: `make check`, `make test` (60/60), `make testfb` e `make
  uismoke` verdes; editor conferido na GUI real.
- Observações/desvios:
  - O SQL do catálogo muda entre o Firebird 2.5 e o 3.0 (origem computada,
    colunas de `rdb$ref_constraints`): as consultas usam `rdb$relation_constraints`
    e tentam as duas variantes da origem computada.
  - A posição dos segmentos de índice começa em 0 no 2.5 e em 1 no 3.0: a
    ordem da chave primária é recalculada pela posição no resultado.
  - A escala do NUMERIC vem negativa no catálogo: o modelo guarda o valor
    absoluto.
  - A spec previa abas separadas para a chave primária; ela ficou como uma
    coluna "PK" na grade de campos (posição na chave).

### Fase 4 — Editores de código
- Status: concluída (2026-10-20, commit `9d39873`)
- Entregue:
  - `src/core/ibcode.pas`: `CodeKindName`, `CodeKindTitle`,
    `CreateOrAlterSQL`, `DropObjectSQL`, `SetGeneratorSQL`,
    `TriggerEventSQL`, `ErrorLineNumber` (extrai a linha do erro do
    servidor) e `CommentLines`.
  - `src/core/ibsession.pas`: `LoadCodeObject` lê o objeto do catálogo
    (procedure, trigger, view, domain, exception, generator) com o prefixo
    necessário ao DDL (tabela e evento do trigger, colunas da view) e
    `ExecuteStatement` (um único comando, sem dividir o texto).
  - `src/core/ibtypes.pas`: `TCodeKind` e `TCodeObject`.
  - `src/ui/uCodeEditor.pas`: frame de edição com realce, *Compilar (F9)*,
    *Salvar*, *Carregar*, *Comentar* e painel de mensagens; no erro, o cursor
    vai para a linha indicada pelo servidor.
  - `src/ui/uMain.pas`: duplo clique em procedure/trigger/domain/exception/
    generator abre o editor; menu de contexto com *Editar código*, *Criar…*
    e *Excluir*.
- Testes: `tc_code.pas` (9 casos, núcleo = 78), bloco `editores de codigo` no
  `testfb.lpr` (cria e lê procedure, trigger, view, exception e domain) e no
  `uismoke.lpr` (compila uma procedure pelo frame e confere no catálogo).
- Verificação: `make check`, `make test` (78/78), `make testfb` e `make
  uismoke` verdes.
- Observações/desvios (Firebird 2.5 tem sintaxe própria):
  - O trigger **exige** o evento no comando
    (`create or alter trigger X for T after insert as …`); o evento é lido de
    `rdb$trigger_type` e decodificado por `TriggerEventSQL` (valores
    levantados no próprio 2.5).
  - Não existe `create or alter domain` no 2.5: o editor remove o domínio
    antes de recriá-lo.
  - O 2.5 não guarda o texto das views (`rdb$views` nem existe): o editor
    avisa que a fonte não está disponível e não compila.
  - A fonte da procedure no 2.5 vem sem o `AS` (`rdb$procedure_source`); a
    do trigger vem com (`rdb$trigger_source`).
  - O código é enviado como um único comando (o `;` do corpo quebraria a
    divisão automática de scripts).

### Fase 5 — Administração
- Status: concluída (2026-10-20, commit `bec0f65`)
- Entregue:
  - `src/core/ibtools.pas`: `FindFirebirdTool` (PATH e diretórios do
    Firebird), `ToolConnectionString`, `BuildBackupArgs`,
    `BuildRestoreArgs`, `BuildValidateArgs`, `BuildStatsArgs` e `RunTool`
    (executa com a saída em log; usuário e senha vão por `ISC_USER`/
    `ISC_PASSWORD`, nunca na linha de comando).
  - `src/ui/uAdmin.pas`: diálogo com as quatro tarefas (backup, restore,
    validação e estatísticas), opções e painel de log.
  - `src/ui/uMain.pas`: menu *Serviços > Backup…/Restaurar…/Validação…/
    Estatísticas…*.
- Testes: `tc_tools.pas` (5 casos, núcleo = 83), bloco `ferramentas
  administrativas` no `testfb.lpr` (backup, restore em um banco novo e
  validação com `gfix`) e no `uismoke.lpr` (o diálogo é criado com a
  sessão).
- Verificação: `make check`, `make test` (83/83), `make testfb` e `make
  uismoke` verdes.
- Observações/desvios:
  - O `gstat` não está instalado neste ambiente: o diálogo avisa quando a
    ferramenta não é encontrada.
  - As ferramentas escrevem no fluxo de erro; a leitura usa
    `poStderrToOutPut`.
  - O `gbak` 3.0 usa o arquivo de backup como argumento posicional (sem
    `-f`) e a opção `-rep` para restaurar sobre um banco existente.
  - Sem botão *Cancelar* durante a execução (o processo roda até o fim).

### Fase 6 — Extração e comparador
- Status: concluída (2026-10-21, commit `e6c8725`)
- Entregue:
  - `src/core/ibschema.pas`: modelo do esquema (tabelas, domínios, views,
    procedures, triggers, exceptions, geradores e grants).
  - `src/core/ibextract.pas`: `TExtractOptions`, `ExtractObjects` (um objeto por
    vez, na ordem de dependência), `ExtractScript` (script completo, com
    `COMMIT WORK` periódico opcional) e `SaveExtractFiles` (arquivo único ou
    um arquivo por objeto).
  - `src/core/ibcompare.pas`: `CompareSchemas` (tabelas, colunas, índices,
    chaves estrangeiras, views e procedures) e `BuildSyncScript` (script de
    sincronização em um dos dois sentidos).
  - `src/core/ibsession.pas`: `LoadSchemaModel` lê o esquema completo do
    catálogo.
  - `src/ui/uExtract.pas` e `src/ui/uCompare.pas`: diálogos de extração
    (opções, prévia e salvamento) e de comparação (segunda conexão, lista de
    diferenças, direção e prévia do script de sincronização).
  - `src/ui/uMain.pas`: menu *Ferramentas > Extrair metadados…* e
    *Comparar esquemas…*.
- Testes: `tc_extract.pas` (4 casos) e `tc_compare.pas` (4 casos; núcleo = 85),
  bloco `extracao de metadados` no `testfb.lpr` (o script do banco real traz
  tabela, procedure e trigger com o evento) e no `uismoke.lpr` (o diálogo gera
  o script).
- Verificação: `make check`, `make test` (85/85), `make testfb` e `make
  uismoke` verdes.
- Observações/desvios (Firebird 2.5):
  - A coluna da mensagem da exception é `rdb$message` no 2.5 e
    `rdb$exception_message` no 3.0; o leitor tenta as duas.
  - O gerador não tem valor no catálogo no 2.5: o valor é lido com `gen_id`
    e recriado com `create sequence` + `set generator`.
  - Os privilégios são letras (`S`, `I`, `U`, `D`, `R`) no 2.5 e máscara de
    bits no 3.0.
  - As views não têm texto no 2.5: entram no modelo sem comando de criação.
  - Os domínios são descobertos pelos campos usados como tipo que não são
    colunas de nenhuma tabela (no 2.5 não existe `rdb$types`).

### Fase 7 — Assistente do editor
- Status: concluída (2026-10-21, commit `2dca159`)
- Entregue:
  - `src/core/ibdescribe.pas`: análise do texto sob o cursor
    (`ObjectBeforeCursor`, `WordAt`, `QualifierBeforeDot`,
    `ProcedureCallBefore`).
  - `src/core/ibformat.pas`: `FormatSql` (palavras-chave em maiúsculas e
    indentação por blocos).
  - `src/core/ibtemplates.pas`: templates padrão (`sel`, `ins`, `upd`,
    `proc`, `trig`) e expansão dos marcadores `&Author`, `&Date`, `&Time`,
    `&Database` e `&Cursor`.
  - `src/core/ibhistory.pas`: histórico de comandos por banco (arquivo
    próprio, até 100 comandos por banco).
  - `src/core/ibsession.pas`: `DescriptionOf` (descrição de tabela/campo, com
    cache por conexão) e `ProcedureParameters`.
  - `src/core/ibsettings.pas`: snippets do usuário (`nome=texto`).
  - `src/ui/uSqlTab.pas`: painel do assistente (objeto sob o cursor +
    descrição), parâmetros da procedure no autocompletar, `Ctrl+J` (templates
    e snippets), *Formatar SQL* e o aviso de execução para o histórico.
  - `src/ui/uHistory.pas` e `src/ui/uSnippets.pas`: diálogos de histórico e de
    snippets; menus *Editar > Formatar SQL*, *Editar > Snippets…* e
    *Consulta > Histórico…*.
- Testes: `tc_format.pas` (4 casos), `tc_templates.pas` (4) e `tc_describe.pas`
  (5; núcleo = 98), bloco `assistente do editor` no `testfb.lpr` (parâmetros e
  descrição lidos do catálogo) e no `uismoke.lpr` (o assistente identifica o
  campo sob o cursor e o SQL é formatado).
- Verificação: `make check`, `make test` (98/98), `make testfb` e `make
  uismoke` verdes.
- Observações/desvios:
  - A descrição da coluna está em `rdb$relation_fields` no Firebird 2.5 e em
    `rdb$fields` no 3.0: a leitura tenta as duas.
  - A posição do cursor no LCL é 1-based (`SelStart`), o que exigiu ajustar
    o posicionamento usado pelos testes.
  - O histórico é gravado a cada execução de script (últimos 100 por banco).

### Fase 8 — Usuários e grants
- Status: pendente
- Observações: —
