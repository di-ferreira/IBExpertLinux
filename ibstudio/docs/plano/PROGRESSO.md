# Progresso do plano — IBStudio v2

Este arquivo é atualizado **ao final de cada fase** (e sempre que uma fase
mudar de estado). O plano completo está em `00-plano-geral.md`.

## Situação

| Fase | Spec | Status | Início | Conclusão | Commit |
|---|---|---|---|---|---|
| 0 | [Fundação](fase-00-fundacao.md) | pendente | — | — | — |
| 1 | [Edição de dados](fase-01-edicao-dados.md) | pendente | — | — | — |
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
- Status: pendente
- Observações: —

### Fase 1 — Edição de dados
- Status: pendente
- Observações: —

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
