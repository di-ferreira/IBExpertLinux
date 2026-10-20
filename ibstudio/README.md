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
- **Autocompletar (Code Insight)**: após `FROM`/`JOIN`/`INTO`/`UPDATE` lista
  tabelas e views; após `SELECT`/`WHERE`/`ON`/`ORDER BY`/`GROUP BY` e depois de
  `alias.` lista os campos das tabelas do comando; no início do comando lista
  palavras-chave e funções do Firebird. Abre com `Ctrl+Espaço`, pelo menu
  *Consulta > Completar código* ou automaticamente ao digitar o ponto depois de
  um apelido. Uma tabela digitada em minúsculas é reconhecida pelo catálogo.
- **Duplo clique na tabela/view** abre uma aba já executando
  `select first 100 * from <tabela>` e mostra os dados na grade (mesmo caminho
  do comando *Abrir dados* no menu de contexto da árvore).
- **Ajustes persistentes** (host, porta, banco, usuário, charset, dialeto) em
  arquivo INI — a senha nunca é gravada.

## O que ainda não existe (v2)

Edição na grade, editores de DDL (tabela/procedure/trigger), comparação de
bancos, backup/restore, depurador de procedures, monitor e recursos de IA.
O catálogo completo do que o IBExpert faz está em `recon/FUNCIONALIDADES.md`.

O plano de implementação da v2 está em `docs/plano/`: visão geral por fases
(`00-plano-geral.md`), uma spec por fase, e o andamento em `PROGRESSO.md`.

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

### Executável Windows gerado no Linux

`make win64` produz `dist/win64/ibstudio.exe` (PE32+ GUI x64, já sem símbolos)
usando o compilador cruzado do FPC. Uma vez:

```sh
sudo apt install binutils-mingw-w64-x86-64
curl -L -o fpcsrc.tar.gz \
  https://codeload.github.com/fpc/FPCSource/tar.gz/refs/tags/release_3_2_2
tar xzf fpcsrc.tar.gz && cd FPCSource-release_3_2_2
make crossall OS_TARGET=win64 CPU_TARGET=x86_64 \
     CROSSBINDIR=/usr/bin BINUTILSPREFIX=x86_64-w64-mingw32-
make crossinstall OS_TARGET=win64 CPU_TARGET=x86_64 INSTALL_PREFIX=/opt/fpc-cross
# fv/vcl-compat trazem Menus/Dialogs com os mesmos nomes da LCL: fora.
sudo rm -rf /opt/fpc-cross/lib/fpc/3.2.2/units/x86_64-win64/{fv,vcl-compat}
```

Depois, na pasta `ibstudio/`:

```sh
make win64   # dist/win64/ibstudio.exe
```

O wrapper `tools/fpc-win64.sh` é o compilador usado pelo lazbuild (ele injeta
`-Twin64 -Px86_64` e os caminhos das unidades cruzadas). Use
`FPC_WIN64_ROOT=/outro/caminho` se a toolchain não estiver em `/opt/fpc-cross`.

No Windows o app carrega o cliente Firebird em tempo de execução: copie
`fbclient.dll` (ou `gds32.dll`) de mesma arquitetura para a pasta do `.exe` ou
para o `PATH`, ou aponte o caminho com a variável `IBSTUDIO_FBCLIENT`. O
executável de 64 bits exige o cliente de 64 bits.

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
