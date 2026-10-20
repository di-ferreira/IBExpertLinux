# Fase 7 — Assistente do editor: descrições, parâmetros, templates, snippets e histórico

Status: pendente
Depende de: Fase 1 (dados) e do autocomplete já implementado
Estimativa: M (1 a 2 sessões)

## Objetivo

Completar o "Code Insight" do IBStudio com o que falta em relação ao
IBExpert: descrição do objeto sob o cursor, parâmetros de procedures na
lista, templates, snippets e histórico de comandos.

## Escopo

1. **Descrições (`src/core/ibdescribe.pas`)**
   - Ler `rdb$description` de tabelas, campos, procedures e generators.
   - `ObjectDescription(ASession, ARelation, AField): string`.
   - Cache por conexão, invalidado com o cache de metadados.

2. **SQL Assistant (`uSqlTab`)**
   - Painel inferior direito (ou barra lateral) com tabela/campo sob o cursor
     e a descrição; atualiza ao mover o cursor (timer curto).
   - Não interfere na grade; pode ser ocultado pelo menu `Exibir`.

3. **Parâmetros de procedures**
   - `TIBStudioSession.ProcedureParameters(const AName): TStrings`
     (`rdb$procedure_parameters`, ordem + tipo).
   - No autocomplete, depois de `nome_da_procedure(` listar os parâmetros.

4. **Templates e snippets**
   - `src/core/ibtemplates.pas`: expansão de atalhos (`sel`, `ins`, `upd`,
     `proc`, `trig`) com placeholders (`&Author`, `&Date`, `&Time`,
     `&Cursor`) — funções puras.
   - `Ctrl+J` abre a lista; snippets do usuário persistidos em
     `TStudioSettings` (nome + texto) e menu `Editar > Snippets`.

5. **Histórico e formatação**
   - Histórico por banco (últimos 100 comandos) em arquivo próprio;
     menu `Consulta > Histórico…` com busca e inserção.
   - `src/core/ibformat.pas`: formatação básica (caixa das palavras-chave,
     indentação de `SELECT/WHERE`, quebra de listas) — função pura.

## Passos

1. `ibdescribe.pas` + `testfb` (descrição de tabela/campo).
2. Painel SQL Assistant.
3. Parâmetros no completion.
4. `ibtemplates.pas` + UI (`Ctrl+J`, snippets).
5. Histórico.
6. `ibformat.pas` + `Formatar SQL` no menu.

## Critérios de aceite

- Clicar em um campo da tabela mostra o tipo e a descrição no painel.
- Digitar `uma_procedure(` e `Ctrl+Espaço` lista os parâmetros na ordem.
- `Ctrl+J` expande `sel` em um `SELECT` completo com o cursor no ponto certo.
- O histórico lista os últimos comandos executados e reinsere o escolhido.
- `Formatar SQL` organiza um comando sem alterar o resultado.

## Testes mínimos

- `tc_templates.pas`: expansão de 3 atalhos e placeholders (4 asserções).
- `tc_format.pas`: caixa de palavras-chave e indentação (4 asserções).
- `testfb.lpr`: descrição e parâmetros de uma procedure do banco de teste
  (1 bloco).
- Verificação manual do painel e do histórico.

## Riscos

- Descrições locais (quando o banco não tem `rdb$description`) exigiriam uma
  tabela interna; nesta fase, mostrar apenas o que existe no catálogo.
- Formatação automática pode conflitar com `SET TERM`; não formatar triggers.

## Commit sugerido

`feat(ibstudio): SQL Assistant, parametros, templates, snippets, historico e formatacao`
