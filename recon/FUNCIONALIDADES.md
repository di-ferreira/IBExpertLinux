# Catálogo de funcionalidades — IBExpert (IBExpert.exe)

Data: 2026-10-20.
Fontes: tabela de strings do PE (295.904 entradas extraídas com `strings`),
277 formulários DFM reconstruídos (`recon/forms/`), inventário de componentes
(`recon/INVENTARIO.md`) e execução passiva sob Wine.

O binário é Delphi 5 sem empacotador; as legendas de menu e de ações são
literais no segmento de dados, o que permitiu recuperar os nomes reais dos
comandos (bloco contínuo em torno das linhas 58.540–59.660 de
`/tmp/opencode/ibe.strings`).

> Este documento descreve **o que o produto faz**. Ele não copia código:
> serve de mapa para a reimplementação livre do IBStudio.

## 1. Números do produto original

| Item | Valor |
|---|---|
| Executável | 18.098.688 bytes (17,3 MiB) |
| Seção de código | 12,26 MB de x86 |
| Prólogos de função (`55 8B EC`) | 20.764 (piso; estimativa real 30–60 mil) |
| Formulários/frames Delphi | 313 recursos DFM (277 recuperados) |
| Objetos de formulário | 10.862 |
| Handlers de evento | 5.049 |
| Menus de barra (DevExpress) | 10 menus principais + ~15 popups |

## 2. Menu principal

`Database`, `Edit`, `Grid`, `View`, `Options`, `Tools`, `Services`, `Plugins`,
`Windows`, `Help` (na versão em inglês).

- **Database**: Register/Unregister/Connect/Disconnect, Create/Drop Database,
  New Domain/Table/View/Procedure/Trigger/Generator/Exception/UDF/Role, Exit.
- **Edit**: cut/copy/paste/select all, bookmarks, undo/redo, find/replace,
  incremental search, goto.
- **Grid**: filtros, ordenação, agrupamento, exportação, cópia de registros.
- **View**: DB Explorer, barras de ferramentas, SQL Assistant, Snippets,
  inspetor.
- **Options**: Environment Options, Editor Options, Keyboard Templates,
  General Templates, cores, formatos de exibição, external tools.
- **Tools**: SQL Editor, New SQL Editor, SQL Monitor, Search in Metadata,
  Extract Metadata, Print Metadata, User Manager, Grant Manager, Report
  Manager, Blob Viewer/Editor, Database Designer, Localize IB Messages.
- **Services**: Backup, Restore, Server Properties/Log, Database Validation,
  Database Statistics, Database Properties, Shutdown, Online.
- **Plugins**: Windows Manager, Close All, Cascade, Tile, Minimize All,
  Arrange.
- **Help**: What's new, Contents, InterBase Help, Additional Help Files,
  Product Home Page, Bug reports, About, licença/registro.

## 3. Bancos e conexões

- Registro de bancos com apelido, host, protocolo (local/remoto), porta,
  usuário, senha, charset, dialeto e parâmetros adicionais.
- Teste de conexão, conexão/desconexão, reconexão, clone de registro.
- Criação e exclusão de bancos pela interface; "Register Database After
  Creating".
- Página de configuração com scripts **Before/After Connect** e
  **Before/After Disconnect**.
- Histórico de "last used", bancos desconectados ocultáveis, filtro por
  nome/inatividade.
- Caminho para `ISC4.GDB`, biblioteca cliente por banco, versão padrão do
  servidor.
- Suporte a múltiplos bancos ativos simultaneamente (árvore e SQL Editor por
  banco), com "Select Database"/"Goto Database".

## 4. Database Explorer (árvore de metadados)

- Pastas: Domains, Tables, Views, Triggers, Procedures, Generators,
  Exceptions, UDFs, Roles, System Tables.
- Filtros por nome (começa com, termina com, contém, igual, negações),
  case-sensitive, e filtro por descrição (`~texto`).
- Expansão sob demanda; opção **Double-click Expanding**.
- Descrições de objetos editáveis e persistidas (tabela interna do IBExpert).
- "Find Item", "Find object in explorer tree", recarregar pasta/árvore.
- Nós de tabela mostram campos, chaves, índices, constraints, triggers,
  dependências, grants e dados.
- Menus de contexto: New Subfolder, Edit Item, Copy User Item, Create User
  Item from Clipboard, Hide Disconnected Databases, Refresh, Inspector Page
  Mode, Show Toolbar, Show SQL Assistant.
- "Show Objects Descriptions", "Show objects details (fields, indices etc.)".
- Pastas de usuário (favoritos) e "Move Node to Root".

## 5. SQL Editor

- Múltiplos editores com abas, "New SQL Editor", conjuntos de consultas
  (query sets), Previous/Next Query, rename/delete de consultas.
- Execução de script completo ou seleção, Run Script / Stop Script,
  "Execute and fetch all", commit/rollback, prepare query.
- Histórico de comandos (SQL Editor History Count, "Manage Statement
  History"), "Statement List".
- Realce de sintaxe, indentação automática, números de linha, margem,
  destaque da linha atual, scroll past EOL, bracket/navigate BEGIN...END.
- **Code Insight** (o autocomplete do produto):
  - Code Completion (tabelas, campos, procedures, comandos SQL);
  - Code Parameters (parâmetros de procedures);
  - atraso configurável (Delay sec), "SQL Keywords Case", "Code Case";
  - **Custom Code Insight Items** (lista do usuário);
  - **SQL Assistant** (janela lateral com descrição do objeto sob o cursor);
  - **Dynamic Help**;
  - Code Completion desativável dentro de descrições.
- **Templates** (expansão por atalho): Keyboard Templates, General Templates,
  símbolos `&Author`, `&Time`, `&Date`, `&Backspace`, `&Cursor Position`,
  "Emulate Typewriting" com atraso em ms; "Templates Case".
- **Snippets**: página de snippets, New/Delete Snippet, snippet a partir da
  área de transferência, pastas de snippets.
- Edição: Find/Replace com regex, case/whole words, direção e escopo;
  Incremental Search; Go to; bookmarks; comentar/descomentar seleção;
  conversão de caixa (lower/upper/namecase/invert/toggle).
- "Format code"/"Format query text" com Code Formatting Options.
- Plano de execução: Plan Analyzer, "Get plan before statement execution",
  "Disable plan request in SQL Editor", Expected Plan.
- **Performance Analysis** por comando: reads, updates, deletes, inserts,
  indexed/non-indexed reads, plano, tempo; páginas Results / Performance
  Analysis / Logs / Messages / Parser Messages.
- SQL Monitor (eventos do servidor) e Trace Service.
- "Clear editor after successful execution of DDL", "Synchronize text of
  active query in opened SQL Editor immediately".
- "Use metadata cache", "Show script explorer", "Add CONNECT statement",
  "Generate 'CONNECT' statement", "Copy Script".

## 6. Grade de resultados e dados

- Grid e Form View, "Show summary footer", contagem de registros/afetados.
- Filtros: filter panel, quick add criteria, AND/OR, group by, filter string,
  "Count filtered records automatically", "Invert filter".
- Ordenação por coluna (index sorting), autowidth/best fit, reordenar colunas
  por drag-and-drop ou Shift+Ctrl+Up/Down, agrupar/desagrupar campos.
- Edição de células, inserir/duplicar/excluir registro, copiar registro(s)
  como INSERT/UPDATE, copiar/colar célula, "Set NULL", "Set empty string".
- BLOB Viewer/Editor: visualizar/editar/salvar/carregar BLOB, RTF, imagem,
  "Print BLOB and MEMO values".
- Exportação: CSV/texto/HTML/Excel/RTF/XML, script INSERT, banco/tabela
  destino, "Export Data into Script", opções de formato, NULLs, datas.
- Importação: wizard com formato (CSV/texto), mapeamento de colunas, preview,
  primeira/última linha, separadores, OEM→ANSI, trim, booleanos.
- Impressão da grade, page setup, print preview, relatórios FastReport.
- "Get record count", "Empty Table", "Analyze objects in grid",
  "Copy selected record(s) as INSERT", "Copy records to clipboard".

## 7. Editores de objetos (DDL)

- **Tabela**: criar/editar campos (add/insert/drop/move up/down), tipos,
  domínio, default, NOT NULL, computed, autoincrement, charset/collate,
  descrição; constraints (PK, FK, check, unique), índices (campos, sorting,
  unique, active, recompute selectivity), triggers, grants, dependências,
  "Prepare table for logging".
- **Domínio**: tipo, subtype, length, precision/scale, charset, default,
  check, NOT NULL, descrição, duplicar, dependências.
- **View**: editor com design/preview, compile, grants, dependências,
  "Create View", "Format view text".
- **Procedure**: editor com parâmetros/retorno, compile, debug, execute,
  comentar/descomentar corpo, criar procedures SIUD
  (SELECT/INSERT/UPDATE/DELETE), "Grant execute to PUBLIC after creating".
- **Trigger**: editor, compile, activate/deactivate (individual, por tabela,
  todas), comentar corpo, "Comment body and make INACTIVE", debug trigger.
- **Generator**: nome, valor inicial, uso, "Set GENERATORS" na extração.
- **Exception**: nome, texto, compilar.
- **UDF**: entry point, library name, parâmetros, retorno, mecanismo.
- **Role/usuário**: criação, senha, nome/sobrenome, active.
- **Índice/constraint** e **foreign key** com regras de update/delete.
- Diálogos auxiliares: Add Column, Add Measure (OLAP), AutoInc, autogrant.

## 8. Administração do servidor

- **Backup**: arquivos, metadata only, garbage collection, ignore checksum,
  ignore limbo, verbose, formato, "Deactivate/Activate indexes", page size,
  "Don't recreate shadow files", "Commit after each table".
- **Restore**: replace existing, "Use all space", page size, restore as,
  validity conditions, commit por tabela.
- **Validação** (`gfix`) e **estatísticas** (`gstat`) com opções por página e
  por tipo de objeto; "Retrieve all statistics", "Preview Log Report".
- **Shutdown/Online**, **Server Properties/Log**, "Database Properties",
  "Active Users", "Communication Diagnostics".
- **User Manager** (usuários, papéis, default role), **Grant Manager**
  (privilégios por objeto/campo, grant to all, revoke, script de grants),
  **Autogrant** ao compilar procedures/triggers/views.
- **Localize IB Messages** (tradução das mensagens do servidor) e
  **Localize IBExpert** (interface).
- **Database Comparer**: compara metadados e dados entre bancos, gera script
  de sincronização, "Compare versions", "Remove duplicates".
- Extratos de metadados: Extract Metadata / Print Metadata, "Extract all",
  "Metadata only", single file ou arquivos separados, descriptografar
  domínios, BLOBs, `CREATE DATABASE`/`CONNECT`, `COMMIT WORK` a cada N
  registros, "Extract COMPUTED BY", "Extract privileges", HTML.
- Recompilar procedures/triggers, recomputar seletividade, ativar/desativar
  índices e triggers de uma vez.

## 9. Ferramentas de produtividade

- **Visual Query Builder** / **SQL Builder**: montagem visual de consultas,
  critérios, joins, "Autolink columns by name", geração de SQL.
- **Database Designer**: diagrama de tabelas/relacionamentos, exportar.
- **Reverse Engineer**: gera modelo a partir do banco.
- **Data Generator**: geração de dados de teste por campo/regra.
- **Data Analysis / OLAP**: cubos, dimensões (Add Measure/Dimension).
- **Table Data Comparer**.
- **Debugger de stored procedures/triggers**: breakpoints, watches,
  parâmetros/variáveis, step over/into, run to cursor, call stack, mensagens.
- **IBEBlock debugger** (linguagem de script própria) e **Script Executive**
  (executa scripts IBEBlock, blocos reutilizáveis, agendamento).
- **Plan Analyzer** e **SP/Triggers/Views Analyzer** (dependências, árvore,
  "Print Dependencies Tree", "Expand/Collapse Recursive").
- **Report Manager** (FastReport): novo/abrir/salvar/renomear relatório,
  pastas, design, preview, exportação.
- **Blob Viewer/Editor**.
- **To-do list** por banco (prioridade, categoria, responsável, prazo).
- **Version History** de objetos e "Compare versions".
- **External Tools** (programas externos com macro/substituição) e
  **ODBC Viewer**, **Database Editor**.
- **Floating Windows Manager**, **Windows Manager**, layouts de desktop.
- **IBExpert Direct**: fórum, bug track, customer area, atualizações,
  downloads (Firebird/InterBase), certificados de ativação.
- **Licenciamento**: trial, chave, registro, "IBExpert Personal" etc.

## 10. Opções do ambiente

- **Environment**: interface language, paths padrão (extract/export/quick
  save/parameters), autohide DB Explorer/main form, splitters, fontes,
  "Restore desktop after connect", "Maximize first child window", zoom.
- **Editor**: Code Insight (acima), templates, cores por elemento, margem,
  gutter, tab stops, undo limit, fonte, "Automatic Features".
- **Grid**: cores (fundo, linha atual, linhas ímpares, inteiros, float,
  data/hora, strings), formatos de exibição, "Stripy Grids", largura de
  strings, "Show text blobs as memo", memo height/wrap, grouping.
- **Transactions**: autocommit, propriedades das transações de dados e de
  metadados, confirmação de commit/rollback.
- **Confirmations**: salvar objeto, sair do editor, drop, exit, compilação.
- **SQL Script**: abort on error, rollback on abort, macros, fetch all,
  objects count restricted, single object instance.
- **Explorer filters**, system objects, tooltips, "Use Field Scale".
- **Keyboard**: atalhos, menus de contexto, associações `.gdb`/`.sql`,
  navegação por Tab/Shift+Tab, "Enable SPACE as select button".
- **Proxy** para checagem de licença/rede, polling de rede.
- **Code Formatting Options**: caixa de palavras-chave, indentação, wraps,
  "Do NOT put CR+LF...", "Don't format local variables".

## 11. Funcionalidades pedidas para replicar

### 11.1 Autocomplete de tabelas, campos e comandos SQL

No original isso se chama **Code Insight** e tem três camadas:

1. **Code Completion** — lista contextual: após `FROM`/`JOIN`/`UPDATE`/
   `INTO` oferece tabelas e views; após `SELECT`/`WHERE`/`ON`/`ORDER BY`
   oferece campos das tabelas da consulta; após `alias.` oferece os campos
   daquela tabela; no início do comando oferece palavras-chave SQL.
2. **Code Parameters** — parâmetros e variáveis de procedures.
3. **SQL Assistant** — painel com a descrição do objeto e do campo sob o
   cursor (usa as descrições persistidas).

Complementos: atraso configurável, lista de palavras-chave/tabelas/campos/
procedures, itens personalizados, templates e snippets.

### 11.2 Duplo clique no nome da tabela abre os dados

No original, o duplo clique na árvore é controlado pela opção **Double-click
Expanding** (expande o nó). A janela de dados vem do comando **Show data...**
(`miShowTableData`), que abre a tabela em uma grade editável.

No IBStudio o comportamento pedido é: duplo clique na tabela/view abre uma
aba já executando `select first 100 * from <tabela>`, com os dados na grade.

## 12. Cobertura atual do IBStudio e próximos passos

Já implementado (v1):

- Conexão Firebird (host/porta/banco/usuário/charset/dialeto), criação de
  banco, teste de conexão, persistência da última conexão.
- Árvore de metadados com pastas, tabelas, views, procedures e colunas com
  tipo preciso (NUMERIC/DECIMAL, CHAR/VARCHAR por caractere).
- Abas de SQL com SynEdit (realce InterBase), execução em thread, grade de
  resultados, mensagens e tempo por comando.
- 24 testes de núcleo + testes de integração e de fumaça de UI.

Prioridades sugeridas, na ordem:

1. Autocomplete (Code Insight) e duplo clique com dados — **este ciclo**.
2. Edição de células na grade + geração de INSERT/UPDATE.
3. Exportação/importação CSV.
4. DDL: editor de tabela (campos, PK/FK, índices) e de procedure/trigger.
5. Backup/restore e validação (`gbak`/`gfix`).
6. Comparador de metadados e extração de script.
7. Debugger de procedures.
