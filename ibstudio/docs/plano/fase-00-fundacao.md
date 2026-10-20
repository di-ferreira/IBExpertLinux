# Fase 0 — Fundação: execução, transações, configurações e prévia de SQL

Status: pendente
Depende de: —
Estimativa: S (1 sessão)

## Objetivo

Preparar a base reutilizada pelas fases seguintes, sem mudar o comportamento
visível do aplicativo:

- execução de comando com parâmetros (necessária para edição de dados e
  importação CSV);
- controle explícito de commit/rollback na sessão e no executor;
- serviço de configurações (hoje o `uMain` lê o INI diretamente);
- diálogo reutilizável de prévia/execução de script (usado nas fases 3, 4 e 6).

## Escopo

1. **Execução parametrizada**
   - `TIBExecutor.ExecuteParams(const ASQL: string; AParams: TParams;
     ACommit: Boolean): Integer` (linhas afetadas).
   - `TIBStudioSession.Execute(const ASQL: string; AParams: TParams = nil;
     ACommit: Boolean = True): Integer`, na conexão da UI, para DML curto.
   - `TIBStudioSession.Commit` e `Rollback`.
   - Reaproveitar `TIBExecutor.Open/Close` e o tratamento de exceção atual.

2. **Configurações**
   - Nova unidade `src/core/ibsettings.pas`:
     `TStudioSettings` com `Load`, `Save`, `Reset`, propriedades tipadas
     (host, porta, banco, usuário, charset, dialeto, última pasta de
     exportação/importação, opções de grade e editor que forem surgindo).
   - `uMain` passa a usar `TStudioSettings` para carregar/salvar a última
     conexão; a senha continua fora do arquivo.

3. **Prévia de SQL**
   - Nova unidade `src/ui/uSqlPreview.pas`: formulário modal com `TSynEdit`
     somente leitura, realce SQL, botões `Executar` e `Cancelar`.
   - Função `ConfirmSql(const ATitle, ASQL: string): Boolean`.

4. **Ajustes de suporte**
   - `TIBStudioSession` expõe `Connection`/`Transaction` apenas para leitura
     (usado pela prévia e pela fase 1).
   - Nenhuma mudança de layout ou de fluxo existente.

## Passos

1. Criar `src/core/ibsettings.pas` + mover a leitura/gravação do INI de
   `uMain` para lá.
2. Acrescentar `ExecuteParams`, `Execute`, `Commit`, `Rollback` em
   `ibsession.pas`.
3. Criar `uSqlPreview.pas` e ligar o menu `Ferramentas > Prévia de SQL`
   (item simples que abre o diálogo com o texto da aba ativa, sem executar).
4. Compilar e rodar a suíte existente.

## Critérios de aceite

- O aplicativo conecta, executa SQL e mostra resultados como antes.
- `TStudioSettings` grava e relê todos os campos em um INI temporário.
- `ExecuteParams` insere um registro com parâmetro e `Rollback` desfaz.
- A prévia mostra o SQL com realce e não executa ao abrir.

## Testes mínimos

- `tests/tc_settings.pas`: gravar/ler em arquivo temporário, valores padrão,
  campo ausente (4 asserções).
- `tests/testfb.lpr`: `ExecuteParams` com um `insert` + `Rollback` e conferência
  da contagem (1 bloco).
- `make check` e `make test`.

## Riscos

- `TParams` vem de `DB`; o núcleo já depende de `DB`, então não há dependência
  nova.
- Migrar o INI pode alterar chaves existentes: manter as mesmas chaves
  (`[ultima]`) para não perder a configuração do usuário.

## Commit sugerido

`refactor(ibstudio): fundacao de execucao parametrizada, configuracoes e previa de SQL`
