# IBExpert — análise e reimplementação livre

Repositório com duas coisas:

1. **A análise do binário original** `IBExpert.exe` (IBExpert IDE 2013.2.20.1,
   Delphi 5) — inventário de formulários, catálogo de funcionalidades e
   material reproduzível (`recon/`).
2. **O `ibstudio/`** — uma reimplementação **escrita do zero** do núcleo
   funcional do IBExpert em Free Pascal/Lazarus, multiplataforma (Linux e
   Windows), com conexão Firebird, Database Explorer, editor SQL, edição de
   dados, editores de DDL, administração, extração/comparação de metadados e
   gerenciamento de permissões.

> O código do `ibstudio/` é original: nada foi copiado do binário do
> IBExpert. O `IBExpert.exe` é mantido aqui apenas como **material de
> análise** e não é redistribuído (ver [O binário original](#o-binário-original)).

---

## IBStudio em números

| | |
|---|---|
| Linhas de Pascal | 6.686 (núcleo) + 6.668 (interface) + 3.336 (testes) |
| Unidades | 18 no núcleo (sem LCL) + 16 de interface (LCL) |
| Testes | 104 unitários + integração com Firebird real + fumaça de interface |
| Fases do plano v2 | 9/9 concluídas |
| Plataformas | Linux (nativo) e Windows x64 (cross-compilado) |
| Dependências | Free Pascal 3.2.2, Lazarus 2.2+, `libfbclient` |

---

## Funcionalidades

### Conexão e navegação

- **Conexão Firebird** (2.1 a 5.x) por host/porta/caminho, usuário, senha,
  charset e dialeto; botão *Testar* antes de conectar e criação de banco novo.
- **Database Explorer** em árvore: Tabelas, Views, Procedures, Triggers,
  Domains, Generators, Exceptions, Roles e UDFs, com colunas e parâmetros
  carregados sob demanda (tipo, tamanho, precisão/escala, nulabilidade).
- **Duplo clique** em tabela/view abre uma aba já executando
  `select first 100 * from <tabela>` e mostra os dados — o mesmo caminho do
  comando *Abrir dados* do IBExpert.

### Editor SQL

- **Realce de sintaxe** (SynEdit, dialeto Interbase/Firebird) e execução de
  scripts com vários comandos (`;`, `SET TERM`, strings, comentários de linha
  e de bloco), com resultado em grade e mensagem por comando.
- **Execução em thread**: a interface não congela; cada execução abre a própria
  conexão e materializa o resultado em um `TBufDataset`.
- **Autocompletar (Code Insight)**: após `FROM`/`JOIN`/`INTO`/`UPDATE` lista
  tabelas e views; após `SELECT`/`WHERE`/`ON`/`ORDER BY`/`GROUP BY` e depois de
  `alias.` lista os campos do comando; no início do comando lista palavras-chave
  e funções. Abre com `Ctrl+Espaço`, pelo menu *Consulta > Completar código* ou
  automaticamente ao digitar o ponto depois de um apelido.
- **Assistente**: painel que mostra o objeto sob o cursor e a descrição dele
  (lida de `rdb$description`); parâmetros de procedures no autocompletar.
- **Formatação de SQL** (palavras-chave em maiúsculas e indentação por blocos),
  **templates e snippets** (`Ctrl+J`, com `&Author`, `&Date`, `&Time`,
  `&Database` e `&Cursor`) e **histórico de comandos** por banco.

### Dados

- **Edição de registros**: *Novo*, *Editar*, *Excluir* e *Copiar INSERT* na aba
  de dados, com diálogo por campo, marcação de NULL, geração de
  `INSERT`/`UPDATE`/`DELETE` sobre a chave primária e recarrega do resultado.
- **Exportação CSV** do resultado (separador, cabeçalho, texto de NULL,
  codificação UTF-8 ou ISO-8859-1).
- **Importação CSV** com prévia das primeiras linhas, correspondência
  automática coluna → campo, inserção parametrizada em transação e relatório.

### Metadados e código

- **Editor de tabela**: campos (tipo, tamanho, escala, NOT NULL, chave
  primária, default, descrição), índices e chaves estrangeiras, com prévia do
  script DDL e execução com confirmação.
- **Editores de código**: procedure, trigger, view, domain, exception e
  generator — compilar (F9), mensagens do servidor com destaque da linha do
  erro, salvar e carregar `.sql`, comentar o código.
- **Extração de metadados**: script completo de criação do banco (um arquivo
  único ou um arquivo por objeto), na ordem de dependência.
- **Comparador de esquemas**: diferenças entre dois bancos (tabelas, colunas,
  índices, chaves estrangeiras, views e procedures) e script de sincronização
  em qualquer um dos dois sentidos.

### Administração e permissões

- **Backup, restore, validação e estatísticas** com `gbak`, `gfix` e `gstat`
  (usuário e senha por variável de ambiente, nunca na linha de comando).
- **Usuários, papéis e privilégios**: criação, alteração de senha, exclusão,
  concessão e revogação por objeto e por coluna.
- **Sessões ativas** no servidor (`mon$attachments`).

---

## Compilar e executar

Requisitos: **Free Pascal 3.2.2+**, **Lazarus 2.2+** (LCL e SynEdit) e o
cliente Firebird (`libfbclient2` no Linux, `fbclient.dll` no Windows).

```bash
cd ibstudio
make app        # compila a aplicação (./ibstudio)
make run        # compila e executa
```

O cliente Firebird é procurado em `libfbclient.so`, `libfbclient.so.2`,
`/opt/firebird/lib/libfbclient.so`, `fbclient.dll`, `gds32.dll` e também na
variável `IBSTUDIO_FBCLIENT`.

### Testes

```bash
make test        # 104 testes do núcleo (fpcunit), sem banco
make check       # apenas compila o núcleo + camada de banco
make testfb      # integração com um Firebird real (cria o banco se preciso)
make uismoke     # fumaça da interface (precisa de um display X)
make win64       # gera dist/win64/ibstudio.exe (cross-compilação)
```

`make testfb` e `make uismoke` aceitam o DSN do servidor:

```bash
make testfb FB=localhost/3050:/caminho/banco.fdb TEST_USER=SYSDBA TEST_PASS=masterkey
```

### Windows

```bash
make win64                       # requer a toolchain de tools/fpc-win64.sh
cp /caminho/fbclient.dll dist/win64/
```

---

## Estrutura

```
.
├── README.md                  este arquivo
├── IBExpert.exe               binário original (material de análise, não redistribuído)
├── run-linux.sh               executa o original via Wine
├── run-windows.bat            executa o original no Windows
├── recon/                     análise do binário original
│   ├── ANALISE.md             identidade, arquitetura e evidências
│   ├── FUNCIONALIDADES.md     catálogo do que o IBExpert faz (por módulo)
│   ├── INVENTARIO.md          inventário dos componentes de formulário
│   ├── PLANO-RECONSTRUCAO.md  o que significa reconstruir e o que é viável
│   ├── forms/*.dfm            277 formulários reconstruídos em DFM texto
│   ├── resources/*.bin        331 recursos RCDATA extraídos do PE
│   └── dfm_extract.py         extrator/decodificador DFM (reproduzível)
└── ibstudio/                  a reimplementação
    ├── src/core/              núcleo sem LCL (SQL, DDL, CSV, esquema, segurança…)
    ├── src/ui/                interface (LCL) em código, sem arquivos .lfm
    ├── tests/                 fpcunit, integração com Firebird e fumaça de UI
    ├── docs/plano/            plano da v2: uma spec por fase + PROGRESSO.md
    └── tools/                 scripts de cross-compilação
```

O padrão do projeto: **toda regra de negócio mora em `src/core`**, sem
dependência de LCL, e é testada com `fpcunit`; a interface só desenha e
encaminha. Os formulários são construídos em código (sem `.lfm`), como já
faz o `recon/`.

---

## Documentação

| Documento | Conteúdo |
|---|---|
| [`ibstudio/docs/plano/00-plano-geral.md`](ibstudio/docs/plano/00-plano-geral.md) | visão geral das 9 fases da v2, princípios e escopo |
| [`ibstudio/docs/plano/PROGRESSO.md`](ibstudio/docs/plano/PROGRESSO.md) | andamento, decisões e desvios de cada fase |
| [`ibstudio/README.md`](ibstudio/README.md) | manual do aplicativo (estrutura das unidades, atalhos, opções) |
| [`recon/FUNCIONALIDADES.md`](recon/FUNCIONALIDADES.md) | catálogo das funcionalidades do IBExpert original, por módulo |
| [`recon/ANALISE.md`](recon/ANALISE.md) | análise técnica do binário Delphi 5 |
| [`recon/PLANO-RECONSTRUCAO.md`](recon/PLANO-RECONSTRUCAO.md) | por que a reconstrução é reimplementação, não cópia |

---

## Compatibilidade

O IBStudio fala com Firebird **2.1 a 5.x**, mas o 2.5 tem sintaxe e catálogo
próprios — o código trata as diferenças explicitamente (o evento do trigger é
obrigatório no DDL, `create or alter domain` não existe, `rdb$views` não
guarda o texto das views, a descrição de coluna mora em
`rdb$relation_fields`, os privilégios são letras e não máscara de bits). As
decisões estão registradas em `ibstudio/docs/plano/PROGRESSO.md`.

---

## O binário original

### Linux (via Wine) — validado nesta máquina

```bash
./run-linux.sh
```

Testado com Wine 6.0.3 em prefixo `win32`: a aplicação abre a janela principal,
o **Database Explorer** e o diálogo de notificação, sem travar. Para conectar em
Firebird/InterBase é preciso o cliente **Windows 32 bits** (`fbclient.dll` ou
`gds32.dll`) dentro do prefixo:

```bash
cp /caminho/fbclient.dll "$HOME/.local/share/ibexpert-wine/drive_c/windows/system32/"
```

O prefixo pode ser trocado: `IBEXPERT_WINEPREFIX=/caminho ./run-linux.sh`.

Observações de uso no Wine:
- o *Notification* inicial é só o aviso de newsletter do IBExpert (fecha
  normalmente);
- diálogos nativos (impressão, OLE) podem exigir `winetricks` extras;
- caminhos de banco devem ser caminhos Windows (`Z:\home\...`).

### Windows

```bat
run-windows.bat
```

(o `.exe` já roda nativamente; o `.bat` só garante o diretório correto e o
cliente Firebird no `PATH`.)

### Nota sobre direitos

`IBExpert.exe` é software proprietário da Embarcadero/IDEB. Ele está no
repositório **apenas como material de análise técnica** (o binário já estava
aqui e não é redistribuído por este projeto). Todo o código do `ibstudio/` é
escrito do zero, a partir de documentação pública e do comportamento
observado do produto — a mesma abordagem do *clean room* usada por projetos
como o LibreOffice com seu "reverse engineering" de formatos.
