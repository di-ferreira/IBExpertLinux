# Fase 8 — Usuários, grants e sessões ativas

Status: pendente
Depende de: Fase 5 (ferramentas/admin) e Fase 0
Estimativa: M (1 a 2 sessões)

## Objetivo

Gerenciar usuários, papéis e privilégios, e acompanhar as conexões abertas —
o *User Manager*, *Grant Manager* e *Active Users* do IBExpert.

## Escopo

1. **Núcleo (`src/core/ibsecurity.pas`)**
   - `ListUsers`/`ListRoles` (via `SEC$USERS`/`SEC$ROLES` no FB 3+ e
     `rdb$users`/`rdb$roles` quando disponível; fallback para mensagem clara).
   - Builders: `CreateUserSQL`, `AlterUserSQL` (senha), `DropUserSQL`,
     `CreateRoleSQL`, `DropRoleSQL`.
   - `GrantSQL`/`RevokeSQL` por objeto (`SELECT`, `INSERT`, `UPDATE`,
     `DELETE`, `EXECUTE`, `REFERENCES`, `ALL`) e por coluna, com `WITH GRANT
     OPTION` e `TO ROLE/PUBLIC/USER`.
   - `ActiveSessions`: consulta `MON$ATTACHMENTS`/`MON$STATEMENTS` (FB 2.1+),
     com usuário, host, PID, estado e SQL atual; fallback vazio.

2. **Interface**
   - `src/ui/uSecurity.pas` com abas:
     - `Usuários` (lista, criar, alterar senha, excluir);
     - `Papéis` (lista, criar, excluir);
     - `Grants` (objeto → tipo → usuário/papel, aplicar/revogar; prévia do
       script).
   - `src/ui/uSessions.pas`: lista de sessões ativas com atualização manual
     (`Atualizar`) e opção de cancelar a consulta em execução (quando
     suportado).
   - Menu `Serviços > Usuários e permissões` e `Serviços > Sessões ativas`.

3. **Segurança**
   - Não registrar senhas em log/INI.
   - Operações destrutivas (drop user/role) com confirmação.

## Passos

1. `ibsecurity.pas` (builders + listas) + `tests/tc_security.pas`.
2. Diálogo de usuários/papéis.
3. Aba de grants com prévia.
4. Lista de sessões ativas.
5. Teste de integração: criar papel, conceder e revogar.

## Critérios de aceite

- Listar usuários e papéis do servidor de teste.
- Criar um papel, conceder `SELECT` em uma tabela e ver o privilégio em
  `rdb$user_privileges`; revogar em seguida.
- Criar/alterar/excluir um usuário de teste (quando o servidor permitir).
- A lista de sessões mostra a conexão do próprio IBStudio.

## Testes mínimos

- `tc_security.pas`: grant/revoke com colunas, `WITH GRANT OPTION`, roles
  (5 asserções).
- `testfb.lpr`: criar papel, conceder/revogar e conferir (1 bloco).
- Verificação manual das telas.

## Riscos

- `CREATE USER` e `SEC$*` variam entre versões e exigem SYSDBA; detectar e
  avisar em vez de falhar.
- `MON$ATTACHMENTS` pode estar desabilitado por configuração do servidor.

## Commit sugerido

`feat(ibstudio): gerenciamento de usuarios, grants e sessoes ativas`
