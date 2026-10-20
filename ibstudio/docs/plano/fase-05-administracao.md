# Fase 5 — Administração: backup, restore, validação e estatísticas

Status: pendente
Depende de: Fase 0
Estimativa: M (1 a 2 sessões)

## Objetivo

Executar as tarefas administrativas do Firebird pela interface, com opções e
log — o equivalente aos diálogos *Backup*, *Restore*, *Database Validation* e
*Database Statistics* do IBExpert, usando as ferramentas oficiais
(`gbak`, `gfix`, `gstat`).

## Escopo

1. **Núcleo (`src/core/ibtools.pas`)**
   - `FindFirebirdTool(const AName: string): string` com busca em
     `PATH`, `/opt/firebird/bin`, `/usr/sbin`, `%FIREBIRD%\bin` e variável
     `IBSTUDIO_FIREBIRD_BIN`.
   - Builders de argumentos:
     - `BuildBackupArgs(AProfile, AOptions)`;
     - `BuildRestoreArgs(AProfile, AOptions)`;
     - `BuildValidateArgs(AProfile, AOptions)`;
     - `BuildStatsArgs(AProfile, AOptions)`.
   - `TRunResult` + `RunTool(AExe, AArgs, AOnLine: TLineEvent; AOnDone)` usando
     `TProcess`, com saída linha a linha e código de saída.
   - Nunca montar linha de shell: sempre lista de argumentos (evita injeção).

2. **Interface (`src/ui/uAdmin.pas`)**
   - Um diálogo por tarefa (ou um diálogo com abas), com:
     - arquivo de destino/origem (`TOpenDialog`/`TSaveDialog`);
     - `metadata only`, `garbage collection`, `ignore checksum`, `verbose`,
       `deactivate indexes`, page size, `replace existing`, `use all space`;
     - log em memo, barra de progresso indeterminada e botão `Cancelar`.
   - Menu `Serviços` com os itens; banco atual vem da conexão ativa.
   - Senha passada por variável de ambiente (`ISC_USER`/`ISC_PASSWORD`) ou
     argumento, sem gravar em log.

3. **Validação e estatísticas**
   - `gfix -v -full` e `gstat -h -d` com o log exibido e opção de salvar.

## Passos

1. `ibtools.pas` (builders + runner) + `tests/tc_tools.pas`.
2. `uAdmin.pas` para backup/restore.
3. Validação e estatísticas.
4. Teste de integração: backup → restore em arquivo temporário → validar.

## Critérios de aceite

- Fazer backup de `TESTE_IBSTUDIO` para `/tmp/...fdb` e restaurar em outro
  arquivo, com log visível.
- Validar o banco restaurado sem erros.
- As opções marcadas aparecem nos argumentos gerados.
- Cancelar interrompe o processo.

## Testes mínimos

- `tc_tools.pas`: argumentos de backup/restore/validate/stats com opções
  (4 asserções) e montagem de caminho/aspas (1).
- `testfb.lpr`: `gbak -b` + `gbak -c` + `gfix -v` no banco de teste (1 bloco,
  removendo os arquivos ao final).
- Verificação manual do log na UI.

## Riscos

- Ferramentas ausentes no Windows/Linux: detectar e mostrar instrução de
  instalação em vez de falhar.
- Backup de banco em uso: avisar que o servidor precisa estar acessível e
  que o arquivo de destino não pode existir (ou usar `-rep`).

## Commit sugerido

`feat(ibstudio): backup, restore, validacao e estatisticas via gbak/gfix/gstat`
