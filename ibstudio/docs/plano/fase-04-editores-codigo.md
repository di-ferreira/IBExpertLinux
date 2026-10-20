# Fase 4 — Editores de código (procedure, trigger, view, domain, exception, generator)

Status: pendente
Depende de: Fase 0, Fase 3 (modelos de DDL)
Estimativa: M (1 a 2 sessões)

## Objetivo

Editar e compilar os objetos de código do banco dentro do IBStudio, como os
editores do IBExpert, com mensagens de erro do servidor.

## Escopo

1. **Núcleo (`ibddl.pas` + `ibsession.pas`)**
   - `ObjectSource(ARelation/AName, AKind): string` lendo `rdb$source`,
     `rdb$trigger_source`, `rdb$view_source`, `rdb$procedure_source`.
   - Builders: `CreateOrAlterSQL(AKind, AName, ASource)`,
     `DropObjectSQL(AKind, AName)`, `RecompileSQL(AKind, AName)`.
   - `TIBExecutor.ExecuteScript` já existe para `SET TERM`; reutilizar.
   - Extrair a "linha" da mensagem de erro do Firebird para destacar no editor
     (`ibsqlutil.ErrorLineNumber` ou equivalente puro).

2. **Interface (`src/ui/uCodeEditor.pas`)**
   - Frame com `TSynEdit` (mesmo realce), `Compilar (F9)`, `Salvar .sql…`,
     `Carregar…`, `Comentar/Descomentar` e painel de mensagens.
   - Aba identificada pelo tipo e nome (`PROCEDURE VENDAS_TOTAL`).
   - Duplo clique na árvore em procedure/trigger/view/domain/exception/
     generator abre o editor; tabela continua abrindo dados (Fase 1).

3. **Árvore**
   - Menu de contexto: `Editar`, `Criar`, `Excluir`, `Recompilar`.
   - Recarregar o nó após compilar/excluir (invalidação do cache).

4. **Tratamento de erro**
   - Mostrar mensagem completa; posicionar o cursor na linha indicada quando
     o servidor informar (`At line N`).
   - Não fechar o editor em caso de erro.

## Passos

1. `ObjectSource` + builders + testes.
2. `ErrorLineNumber` + testes.
3. `uCodeEditor.pas` (compilar, salvar, carregar, mensagens).
4. Itens de menu/árvore e integração com a aba.
5. Teste de integração: compilar uma procedure e um trigger.

## Critérios de aceite

- Abrir uma procedure existente, alterar o corpo, compilar e ver sucesso.
- Erro de sintaxe mostra a mensagem e a linha correta, mantendo o texto.
- Criar uma view/exception/generator e excluir pela árvore.
- `SET TERM` é preservado ao compilar triggers.

## Testes mínimos

- `tc_ddl.pas` (extensão): `CreateOrAlter`/`Drop`/`Recompile` para cada tipo
  (6 asserções) e `ErrorLineNumber` (3 asserções).
- `testfb.lpr`: criar procedure simples, compilar, consultar `rdb$procedures`
  e excluir (1 bloco).
- `uismoke.lpr`: abrir o editor de uma procedure e compilar sem erro (opcional).

## Riscos

- `CREATE OR ALTER` só existe a partir do Firebird 2.1; para versões antigas
  gerar `ALTER`/`CREATE` conforme a existência do objeto.
- Triggers exigem `SET TERM`; reaproveitar o separador já implementado.

## Commit sugerido

`feat(ibstudio): editores de procedure, trigger, view, domain, exception e generator`
