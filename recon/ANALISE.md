# Análise técnica — IBExpert.exe

Data da análise: 2026-10-20. Ferramentas: REA (Ghidra 12.1.4 headless,
`open_binary`/`binary_session`), leitura direta do PE, Wine 6.0.3.

## 1. Identidade

| Item | Valor |
|---|---|
| Arquivo | `IBExpert.exe` |
| Tamanho | 18.098.688 bytes (17,3 MiB) |
| Data | 2020-11-07 |
| MD5 | `87e724d473e054748c606fcfb6848d1c` |
| SHA-256 | `6bf0acc58e971ce82c568e110a6dc63703a0dab6b8f1b435c9fc9fe1b814c2b2` |
| Formato | PE32 (i386), subsistema 2 = GUI Windows |
| Entry point | `0x00BB19DC` |
| Compilador | **Borland Delphi 5** (Ghidra: `x86:LE:32:default:borlanddelphi`; caminhos `d:\delphi5\...`; "Portions Copyright (c) 1983,99 Borland") |
| Produto (VS_VERSIONINFO) | `IBExpert IDE`, `IBExpert`, IBExpert KG |
| FileVersion | `2013.2.20.1` |
| ProductVersion | `2012.05.19` |
| Empacotador/protetor | **nenhum** (sem UPX, sem seções estranhas, código nativo íntegro) |

Seções do PE:

| Seção | VA | Tamanho virtual | Conteúdo |
|---|---|---|---|
| `CODE` | `0x1000` | 12.261.888 B | código x86 nativo |
| `DATA` | `0xBB3000` | ~400 KB | dados inicializados |
| `BSS` | `0xC15000` | ~2,9 MB | dados não inicializados |
| `.idata` | `0xEE8000` | ~20 KB | imports |
| `.tls` | `0xEEE000` | 564 B | TLS |
| `.rdata` | `0xEEF000` | 24 B | — |
| `.reloc` | `0xEF0000` | ~719 KB | relocações |
| `.rsrc` | `0xFA0000` | 4.693.200 B | recursos (331 RCDATA + ícones) |

## 2. Dependências

20 DLLs de sistema importadas estaticamente: `kernel32`, `user32`, `gdi32`,
`advapi32`, `ole32`, `oleaut32`, `olepro32`, `comctl32`, `comdlg32`, `shell32`,
`wininet`, `urlmon`, `winmm`, `wsock32`, `version`, `mpr`, `imm32`,
`winspool.drv`, `oledlg`, `gdiplus`.

Banco de dados: carregado em tempo de execução —
`fbclient.dll` (Firebird) e `gds32.dll` (InterBase/Borland). O binário ainda
contém a mensagem:

> `InterBase library gds32.dll not found in the path. Please install InterBase to use this functionality`

Também há suporte a ODBC (`ODBC32.DLL`).

## 3. Bibliotecas de terceiros embutidas (evidenciadas por RTTI/DFM)

| Biblioteca | Marcadores observados |
|---|---|
| **FIBPlus** (acesso Firebird) | `TpFIBTransaction`, `TpFIBDatabase`, `TpFIBDataSet` |
| **Developer Express** (barras, printing, grid) | `TdxBarManager`, `TdxFMPageSetupDialog`, `TdfsSplitter`, `TdxTLReportLinkDesignWindow` |
| **FastReport 3** | `TfrxReport`, `TfrxDesignerForm`, `TfrxPDFExportDialog`, … |
| **TMS Component Pack** | `TMSAODown`, `ACXPVS.pas`, `AOBXPVS.pas` |
| **TNT Unicode Controls** | `TntForms`, `TntControls`, `TntStdCtrls`, `TntMenus` |
| **MW SQL Syntax** | `SoSQLSyn.pas`, `uTextDrawer.pas` |
| **TRegExpr** | `RegExpr.pas`, `RegExpr1.pas` |
| **FastMM4** | `FastMM4.pas` (gerenciador de memória) |
| **DBComparer** | `dbcComp_Prc.pas`, `dbcIBParser.pas` |
| **ThemeMgr / WinXP** | `ThemeMgr.pas` |

Isso significa que uma reimplementação não pode ser "o mesmo código traduzido":
boa parte do comportamento visual vem de componentes comerciais de terceiros.

## 4. Inventário de interface

O PE contém **331 recursos RCDATA**, dos quais **313 são formulários/frames
Delphi (DFM)** — 320 KB a 697 KB cada. Além deles: `DVCLAL` (versão do
compilador), `PACKAGEINFO` (pacotes runtime) e 5 blocos `SUID*` (SQL do editor
de procedimentos).

Recuperados e convertidos para DFM texto: **277 formulários**, com
**10.862 objetos**, **94.620 propriedades** e **5.049 handlers de evento**
(ligações `OnClick = FormClick` etc.). A lista completa está em
`recon/INVENTARIO.md`; os arquivos em `recon/forms/`.

Formulários maiores, que dão a dimensão do produto:

| Formulário | Tamanho do recurso |
|---|---|
| `TIBEMAINFORM` | 697.207 B |
| `TCODEFORMATOPTIONSFORM` | 136.868 B |
| `TREGISTERDBFORM` | 95.940 B |
| `TFRMPRINTTABLE` | 93.910 B |
| `TOPTIONSFORM` | 89.214 B |
| `TFRMDEBUGSP_NEW` | 68.879 B |
| `TSPLASHFORM` | 63.729 B |
| `TFRXMPREVIEWWDXBAR` | 59.483 B |
| `TPROCVIEWFORM` | 56.305 B |
| `TFRMEXPORT` | 56.279 B |
| `TDIMDROPDOWNFORM` | 55.644 B |
| `TSQLSCRIPTFORM` | 54.608 B |

Famílias funcionais identificadas pelos nomes de formulário:

- **Explorer de metadados**: `TC*Frame` (tabelas, colunas, domínios, generators,
  índices, keys, triggers, procedures, views, exceptions, UDFs), `TDATAFRAME`,
  `TOBJECTINSPECTORFRAME`.
- **Editores**: `TSQLSCRIPTFORM`, `TSCRIPTEDITORFORM`, `TVIEWVIEWFORM`,
  `TVIEWTRIGGERFORM`, `TVIEWGENERATORFORM`, `TUDFEDITORFORM`,
  `TDOMAINEDITORFORM`, `TINDEXFORM`, `TPROCVIEWFORM`.
- **Administração**: `TDBBACKUPFORM`, `TDBRESTOREFORM`, `TDBVALIDATEFORM`,
  `TDBSHUTDOWNFORM`, `TDBMONITORINGFORM`, `TSQLMONITORFORM`, `TTRACESERVICEFORM`,
  `TSERVERLOGFORM`, `TUSERMANAGERFORM`, `TGRANTMANAGER`, `TAUTOGRANTFORM`.
- **Ferramentas**: `TDBCOMPAREFORM`/`TDBCOMPAREFORM`, `TDATABASEDESIGNERFORM`,
  `TREVERSEENGINEERFORM`, `TQUERYBUILDERFORM`, `TSQLBUILDERFORM`,
  `TDATAGENERATORFORM`, `TIMPORTDATAFORM`, `TFRMDEBUGSP_NEW` (debugger de
  stored procedures), `TPLANANALYZERFORM`, `TSPTRIGGERANALYZERFORM`.
- **Relatórios/exportação**: toda a árvore `Tfrx*` (FastReport) e `TdxFM*`.
- **Licenciamento**: `TTRIALFORM`, `TTRIALFORM2`, `TLICENSESERVICEFORM`,
  `TSUBSCONFIRMFORM`, `TREGISTERDBFORM`.

## 5. Volume de código

- `CODE` = 12,26 MB de x86.
- Contagem de prólogos padrão `55 8B EC` (`push ebp; mov ebp, esp`) na seção de
  código: **20.764**. Isso é um **piso**: funções com convenção de registradores
  (`register`, padrão Delphi) e folhas não usam frame pointer. A ordem de
  grandeza real fica entre **30 e 60 mil funções**.
- O Ghidra headless **não concluiu** a auto-análise dentro do limite de 330 s
  (`provider_timeout`); para um projeto completo seria necessário elevar
  `REA_GHIDRA_STARTUP_TIMEOUT_MS` e rodar por dezenas de minutos/horas.
  Nenhum resultado parcial é exposto nesse caso.

## 6. Verificação de execução (Linux)

Ambiente: Ubuntu, `wine-6.0.3`, prefixo `win32` novo.

- Processo inicia e permanece estável (sem crash em 90 s+).
- Janelas criadas: `IBExpert` (principal), `Database Explorer`,
  `Notification` (aviso de newsletter), além das janelas auxiliares do VCL.
- Captura de tela em `/tmp/opencode/shots/root.png` (sessão de análise):
  menu completo (Database, Edit, Grid, View, Options, Tools, Scripts, Debug,
  Windows, Help), barra de ferramentas, painel Database Explorer e barra de status.
- Sem `fbclient.dll` no prefixo o app abre, mas não conecta (aviso do próprio app).

Conclusão: **não é necessário reconstruir nada para rodar no Linux** — o binário
original funciona via Wine, que já está instalado nesta máquina.

## 7. Observações de método e limites

- O DFM destes recursos usa uma variante binária do formato (`TPF0` + tokens com
  prefixo de tamanho) e, em alguns formulários, um byte de cabeçalho `>= 0xF0`
  antes do nome da classe. 277 de 313 formulários foram decodificados por
  completo (stream consumido até o último byte); os 37 restantes usam uma
  variação de cabeçalho não documentada e não foram convertidos.
- Não houve execução instrumentada (debugger) do alvo: as conclusões vêm de
  leitura estática, recursos e execução passiva sob Wine.
- A análise de código (decompilação função a função) exigiria uma sessão Ghidra
  longa, que não caberia nesta execução.
