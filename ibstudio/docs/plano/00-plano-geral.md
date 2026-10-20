# Plano de implementação — IBStudio v2

Data: 2026-10-20.
Base: catálogo de funcionalidades do IBExpert em `recon/FUNCIONALIDADES.md`
e estado atual do IBStudio (conexão, árvore de metadados, editor SQL,
execução em thread, grade de resultados, autocomplete e duplo clique).

## Objetivo

Evoluir o IBStudio de "cliente de consulta" para um cliente Firebird de uso
diário, cobrindo os módulos de maior valor do IBExpert em fases pequenas,
cada uma com escopo fechado, critérios de aceite e um conjunto mínimo de
testes.

## Princípios

1. **Núcleo sem LCL.** Tudo que gera SQL, interpreta dados ou decide regra de
   negócio fica em `src/core` e é testável com fpcunit, sem interface.
2. **Interface em código.** Formulários e frames são construídos em Pascal
   (sem `.lfm`), seguindo o padrão já usado (`TSqlTabFrame` deriva de `TPanel`).
3. **Testes mínimos.** Uma unidade de teste por unidade de núcleo nova
   (3 a 8 asserções focadas) e, quando houver banco, uma verificação no
   `tests/testfb.lpr`. Sem testes de UI além do necessário no `uismoke.lpr`.
4. **Uma fase por vez.** Ao terminar a fase: rodar `make test`, `make check`,
   `make testfb` e `make uismoke`; atualizar `PROGRESSO.md`; commitar; e
   **aguardar o OK do usuário** antes de iniciar a fase seguinte.
5. **Commits convencionais**, um por fase (ou por entrega coesa dentro da
   fase), sem `push` e sem binários.
6. **Compatibilidade.** Firebird 2.1 a 5.x; Linux e Windows (o `.exe` é
   validado com `make win64` nas fases que mexem na UI).

## Mapa das fases

| Fase | Tema | Spec | Depende de | Tamanho |
|---|---|---|---|---|
| 0 | Fundação: execução parametrizada, transações, configurações, prévia de SQL | `fase-00-fundacao.md` | — | S |
| 1 | Edição de dados na grade (INSERT/UPDATE/DELETE, copiar como INSERT) | `fase-01-edicao-dados.md` | 0 | L |
| 2 | Exportação e importação CSV | `fase-02-csv.md` | 0, 1 | M |
| 3 | Editor de tabela (campos, PK, índices, FKs) com prévia de script | `fase-03-editor-tabela.md` | 0 | L |
| 4 | Editores de código (procedure, trigger, view, domain, exception, generator) | `fase-04-editores-codigo.md` | 0, 3 | M |
| 5 | Administração: backup, restore, validação e estatísticas | `fase-05-administracao.md` | 0 | M |
| 6 | Extração de metadados e comparador de esquemas | `fase-06-extracao-comparador.md` | 3, 4 | L |
| 7 | Assistente do editor: descrições, parâmetros, templates, snippets, histórico | `fase-07-assistente-editor.md` | 1 | M |
| 8 | Usuários, grants e sessões ativas | `fase-08-usuarios-grants.md` | 5 | M |

Ordem sugerida: 0 → 1 → 2 → 3 → 4 → 5 → 6 → 7 → 8. A ordem pode ser
alterada pelo usuário sem prejuízo das specs (as dependências estão
declaradas em cada arquivo).

## Fora de escopo (v3)

Recursos do IBExpert que não entram neste plano, por custo ou por exigirem
infraestrutura própria:

- Visual Query Builder, Database Designer e Reverse Engineer (diagramas).
- Data Generator e Data Analysis/OLAP.
- Table Data Comparer (comparação de dados, não de esquema).
- Report Manager/FastReport e impressão de grade.
- Depurador de stored procedures/triggers e IBEBlock.
- SQL Monitor/Trace API, monitoramento contínuo.
- Localização de mensagens, temas, `IBExpert Direct` e licenciamento.
- Edição de BLOB em editor dedicado (visualização já existe na grade).

Esses itens podem virar fases futuras, mas não estão detalhados aqui.

## Rastreabilidade com o IBExpert

| Módulo do IBExpert | Onde entra |
|---|---|
| Bancos e conexões | já implementado (v1) |
| Database Explorer | já implementado; menus de contexto crescem nas fases 3, 4 e 6 |
| SQL Editor / Code Insight | já implementado (básico); fase 7 completa |
| Grade de dados | fase 1 |
| Exportação/importação | fase 2 |
| Editores DDL | fases 3 e 4 |
| Administração (gbak/gfix/gstat) | fase 5 |
| Extração/comparador | fase 6 |
| Usuários e grants | fase 8 |
| Templates/snippets/histórico | fase 7 |

## Fluxo de trabalho

1. Usuário aprova o plano e autoriza a fase.
2. Implementar os passos da spec da fase.
3. Rodar os testes mínimos definidos na spec + `make check`.
4. Atualizar `PROGRESSO.md` (status, data, commit, desvios).
5. Commitar (`feat`/`docs`/`test` conforme o caso), sem binários.
6. Parar e aguardar o OK para a próxima fase.

## Estado inicial

- Fase 0: **pendente** (aguardando autorização).
- Fases 1 a 8: pendentes.
- Nenhuma alteração de código foi feita junto com este plano.
