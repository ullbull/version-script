@echo off
setlocal EnableExtensions EnableDelayedExpansion

set "CONFIG_FILE=%~dp0config.txt"

if not exist "%CONFIG_FILE%" (
    echo Config file not found: "%CONFIG_FILE%"
    exit /b 1
)

for /f "usebackq delims=" %%x in ("%CONFIG_FILE%") do (
    set "%%x"
)

echo App name   : !APP_NAME!
echo Port       : !APP_PORT!
echo Log level  : !LOG_LEVEL!
echo Data dir   : !DATA_DIR!

endlocal
