#!/usr/bin/env bash
# Executa o IBExpert.exe no Linux via Wine, com prefixo dedicado e isolado.
#
#   ./run-linux.sh                -> abre o IBExpert
#   ./run-linux.sh --help         -> ajuda do proprio IBExpert
#   IBEXPERT_WINEPREFIX=/caminho ./run-linux.sh
#
# Requisitos: wine + wine32 (i386). Para conectar em Firebird/InterBase e
# preciso o cliente Windows 32 bits (fbclient.dll ou gds32.dll) dentro do
# prefixo; veja README.md.
set -euo pipefail

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
EXE="$HERE/IBExpert.exe"

if [[ ! -f "$EXE" ]]; then
  echo "IBExpert.exe nao encontrado em $HERE" >&2
  exit 1
fi

export WINEPREFIX="${IBEXPERT_WINEPREFIX:-$HOME/.local/share/ibexpert-wine}"
export WINEDEBUG="${WINEDEBUG:--all}"
export WINEDLLOVERRIDES="mscoree,mshtml="
export WINEDPI="${WINEDPI:-96}"

if ! command -v wine >/dev/null 2>&1; then
  echo "Wine nao instalado. Ex.: sudo apt install wine wine32:i386" >&2
  exit 1
fi

# Cria o prefixo (32 bits) na primeira execucao.
if [[ ! -d "$WINEPREFIX" ]]; then
  echo "Criando prefixo Wine em $WINEPREFIX ..."
  WINEARCH=win32 wineboot --init >/dev/null 2>&1 || true
fi

SYS32="$WINEPREFIX/drive_c/windows/system32"
if [[ ! -f "$SYS32/fbclient.dll" && ! -f "$SYS32/gds32.dll" ]]; then
  echo "Aviso: fbclient.dll/gds32.dll (32 bits) nao estao em $SYS32." >&2
  echo "        O IBExpert abre, mas nao conseguira conectar em bancos." >&2
fi

cd "$HERE"
exec wine "$EXE" "$@"
