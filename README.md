# IBExpert.exe — análise e reconstrução

Este diretório contém o binário original `IBExpert.exe` (IBExpert IDE 2013.2.20.1,
Delphi 5), a análise técnica feita sobre ele e os artefatos de reconstrução.

## IBStudio — reimplementação livre (novo)

Além da análise, o diretório traz **`ibstudio/`**: uma reimplementação do núcleo
do IBExpert escrita do zero em Free Pascal/Lazarus, multiplataforma (Linux e
Windows), com conexão Firebird, Database Explorer e editor SQL com execução em
thread. Veja [`ibstudio/README.md`](ibstudio/README.md).

```bash
cd ibstudio
make app && ./ibstudio     # requer fpc 3.2.2 + Lazarus 2.2 + libfbclient
make test                  # 24 testes do núcleo, sem banco
```

## Rodar o binário original

### Linux (via Wine) — validado nesta máquina

```bash
./run-linux.sh
```

Testado com Wine 6.0.3 em prefixo `win32`: a aplicação abre a janela principal,
o **Database Explorer** e o diálogo de notificação, sem travar.

Para conectar em Firebird/InterBase é preciso o cliente **Windows 32 bits**
(`fbclient.dll` ou `gds32.dll`) dentro do prefixo:

```bash
cp /caminho/fbclient.dll "$HOME/.local/share/ibexpert-wine/drive_c/windows/system32/"
# ou, se o Firebird do Windows estiver instalado em outro prefixo:
#   WINEPREFIX=... wine reg add ... (instalador do Firebird para Windows)
```

O prefixo pode ser trocado: `IBEXPERT_WINEPREFIX=/caminho ./run-linux.sh`.

Observações de uso no Wine:
- o `Notification` inicial é só o aviso de newsletter do IBExpert (fecha normalmente);
- diálogos nativos (impressão, OLE) podem exigir `winetricks` extras;
- caminhos de banco devem ser caminhos Windows (`Z:\home\...`).

### Windows

```bat
run-windows.bat
```

(o `.exe` já roda nativamente; o `.bat` só garante o diretório correto e o cliente
Firebird no `PATH`.)

## Análise

- `recon/ANALISE.md` — identidade do binário, arquitetura, inventário, evidências.
- `recon/PLANO-RECONSTRUCAO.md` — o que significa reconstruir e o que é viável.
- `recon/INVENTARIO.md` — tabela dos formulários reconstruídos.
- `recon/forms/*.dfm` — 277 formulários em DFM texto (prontos para LFM/Lazarus).
- `recon/resources/*.bin` — os 331 recursos RCDATA extraídos do PE.
- `recon/dfm_extract.py` — extrator/decodificador DFM (reproduzível).

Gerar novamente:

```bash
python3 recon/dfm_extract.py IBExpert.exe recon/forms
```
