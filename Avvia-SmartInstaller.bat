@echo off
title SmartInstaller v1.31 - Launcher Automatizzato

echo [1/3] Inizializzazione launcher...
:: %~dp0 viene valutato prima del cambio directory, funziona anche da UNC
set "SRC_DIR=%~dp0"
set "LOCAL_HTA=%TEMP%\SmartInstaller.hta"
set "CFG_PTR=%TEMP%\si_cfgpath.txt"

echo [2/3] Preparazione file temporanei...
:: Copia l'HTA in locale (evita blocco ActiveX Windows su percorsi UNC di rete)
copy /Y "%SRC_DIR%SmartInstaller.hta" "%LOCAL_HTA%" >nul 2>&1
if errorlevel 1 (
    echo ERRORE: impossibile copiare SmartInstaller.hta da:
    echo %SRC_DIR%
    pause
    exit /b 1
)

:: Salva il percorso sorgente: l'HTA lo legge per trovare config.json sulla rete
echo %SRC_DIR%> "%CFG_PTR%"

echo [3/3] Avvio SmartInstaller v1.31...
:: Avvia l'HTA direttamente, SENZA elevazione UAC.
start "" mshta.exe "%LOCAL_HTA%"
