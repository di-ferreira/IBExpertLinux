# IBStudio — cliente Firebird em Lazarus/Free Pascal

Reimplementação do núcleo funcional do IBExpert como aplicação livre e
multiplataforma (Linux e Windows). É um projeto novo, escrito do zero, com base
no que foi aprendido na análise do binário original (`recon/ANALISE.md`) — não
contém código do IBExpert.

## O que já funciona

- **Conexão Firebird** (2.1 a 5.x) por host/porta/caminho, usuário, senha,
  charset e dialeto; `Testar` antes de conectar e criação de banco novo.
- **Database Explorer**: árvore com Tabelas, Views, Procedures, Triggers,
  Domains, Generators, Exceptions, Roles e UDFs. Colunas e parâmetros são
  carregados sob demanda, com tipo, tamanho, precisão/escala e nulabilidade.
- **Editor SQL** com realce de sintaxe (SynEdit, dialeto Interbase/Firebird),
  execução de scripts com vários comandos (`;`, `SET TERM`, strings, comentários
  de linha e de bloco), resultado em grade e mensagens por comando.
- **Execução em thread**: a interface não congela; cada execução abre a própria
  conexão e materializa o resultado em um `TBufDataset` entregue à grade.
- **Ajustes persistentes** (host, porta, banco, usuário, charset, dialeto) em
  arquivo INI — a senha nunca é gravada.

## O que ainda não existe (v2)

Edição na grade, editores de DDL (tabela/procedure/trigger), comparação de
bancos, backup/restore, depurador de procedures, monitor e recursos de IA.

## Estrutura

```
ibstudio/
  src/core/       unidades sem LCL (testáveis, reutilizáveis)
    ibtypes.pas     tipos de domínio (perfil, nó de metadados, resultado)
    ibsqlutil.pas   divisão de scripts e detecção do tipo de comando
    ibmetadata.pas  SQL do catálogo (RDB$) e descrição de tipos
    ibsession.pas   conexão, executor em thread e carga de metadados
  src/ui/         interface (LCL)
    uMain.pas       janela principal, árvore e abas
    uSqlTab.pas     editor + grade + mensagens + thread de consulta
    uConnect.pas    diálogo de conexão
  tests/          testes automatizados
```

## Requisitos

- Free Pascal 3.2.2+
- Lazarus 2.2+ (LCL, SynEdit)
- Cliente Firebird (`fbclient`). No Linux, o pacote `libfbclient2`.

O app procura a biblioteca cliente em nomes usuais e respeita a variável
`IBSTUDIO_FBCLIENT` para apontar um caminho específico:

```sh
IBSTUDIO_FBCLIENT=/usr/lib/x86_64-linux-gnu/libfbclient.so.2 ./ibstudio
```

## Compilar e executar

```sh
make app     # lazbuild ibstudio.lpi
make run
```

No Windows, abra `ibstudio.lpi` no Lazarus e compile (ou `lazbuild
ibstudio.lpi` com o FPC/Lazarus instalado). O código é o mesmo; só o widgetset
muda.

## Testes

```sh
make test     # 24 testes do núcleo (fpcunit), sem banco
make check    # compila núcleo + camada de banco (link)
```

Integração com um Firebird real (cria o banco de teste):

```sh
make testfb FB=localhost/3050:/tmp/ibstudio_test.fdb TEST_USER=SYSDBA TEST_PASS=masterkey
```

O banco é criado na primeira execução; nas seguintes o teste reaproveita o
arquivo existente.

Fumaça da interface (precisa de servidor X):

```sh
make uismoke FB=localhost/3050:/tmp/ibstudio_test.fdb TEST_USER=SYSDBA TEST_PASS=masterkey
```

O teste de integração cobre: conexão, listagem de tabelas, colunas com tipo
(`NUMERIC(15,2)`, `VARCHAR(60)` em UTF8), SELECT materializado com acentos,
UPDATE com contagem de linhas afetadas, erro de SQL sem derrubar a sessão e
DDL/DML persistidos e visíveis em outra conexão.

## Notas de implementação

- `TIBExecutor` é dono da sua própria conexão: uma instância por thread.
- Blobs não são carregados no buffer (aparecem como `(blob)`); a grade é
  somente leitura nesta versão.
- O resultado guarda as primeiras 5.000 linhas (`TQueryThread.Create(..., 5000)`).
- Em Firebird, `NUMERIC`/`DECIMAL` compartilham o tipo físico dos inteiros;
  a distinção vem de `rdb$field_sub_type` (1 = NUMERIC, 2 = DECIMAL).
- `rdb$field_length` está em bytes; `CHAR`/`VARCHAR` são exibidos em
  caracteres usando `rdb$bytes_per_character` do charset.
