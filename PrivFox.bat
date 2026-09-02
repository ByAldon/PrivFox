@echo off
setlocal EnableExtensions
chcp 65001 >nul

title PrivFox 0.0.4
color 0B

echo.
echo ============================================================
echo                        PrivFox 0.0.4
echo ============================================================
echo Firefox privacy helper for Windows
echo.
echo IMPORTANT: Close Firefox before continuing.
echo.

set "SCRIPT_DIR=%~dp0"
set "PS_SCRIPT=%SCRIPT_DIR%privfox.ps1"

if not exist "%PS_SCRIPT%" (
    color 0C
    echo [FAILED] privfox.ps1 was not found.
    echo.
    echo Expected file:
    echo %PS_SCRIPT%
    echo.
    pause
    exit /b 1
)

echo Starting PrivFox...
echo.

powershell.exe -NoLogo -NoProfile -ExecutionPolicy Bypass -File "%PS_SCRIPT%"
set "EXITCODE=%ERRORLEVEL%"

echo.
if "%EXITCODE%"=="0" (
    color 0A
    echo ============================================================
    echo                         SUCCESS
    echo ============================================================
    echo PrivFox finished successfully.
    echo The Firefox profile settings were checked after writing.
) else (
    color 0C
    echo ============================================================
    echo                          FAILED
    echo ============================================================
    echo PrivFox returned error code %EXITCODE%.
    echo Read the message above to see what went wrong.
)

echo.
pause
exit /b %EXITCODE%
