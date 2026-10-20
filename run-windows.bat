@echo off
REM Executa o IBExpert no Windows com o diretorio atual como working dir.
REM Requer fbclient.dll ou gds32.dll (32 bits) no PATH ou nesta pasta.
cd /d "%~dp0"
start "" "%~dp0IBExpert.exe" %*
