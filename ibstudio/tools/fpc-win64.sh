#!/bin/sh
# Compilador FPC configurado para gerar executaveis Windows x64 a partir do
# Linux. O lazbuild nao permite passar opcoes extras ao compilador, entao este
# wrapper entra no lugar dele (lazbuild --compiler=tools/fpc-win64.sh ...).
#
# Requer a toolchain cruzada instalada em $FPC_WIN64_ROOT (padrao
# /opt/fpc-cross), construida a partir do fonte do FPC 3.2.2:
#   make crossall OS_TARGET=win64 CPU_TARGET=x86_64 \
#        CROSSBINDIR=/usr/bin BINUTILSPREFIX=x86_64-w64-mingw32-
#   make crossinstall OS_TARGET=win64 CPU_TARGET=x86_64 INSTALL_PREFIX=/opt/fpc-cross
# Tambem precisa dos binutils do MinGW-w64 (binutils-mingw-w64-x86-64).

set -e

CROSS="${FPC_WIN64_ROOT:-/opt/fpc-cross}"
UNITS="$CROSS/lib/fpc/3.2.2/units/x86_64-win64"

if [ ! -d "$UNITS" ]; then
  echo "fpc-win64: unidades win64 nao encontradas em $UNITS" >&2
  echo "fpc-win64: defina FPC_WIN64_ROOT ou instale a toolchain cruzada" >&2
  exit 1
fi

exec /usr/bin/fpc \
  -Twin64 -Px86_64 \
  "-Fu$UNITS/*" \
  "-Fu$UNITS/rtl" \
  -FD/usr/bin \
  -XPx86_64-w64-mingw32- \
  "$@"
