@echo off
setlocal enabledelayedexpansion

set "PS1=%~dp0flash_firmware_sideload.ps1"
if not exist "%PS1%" (
    echo Error: %PS1% not found.
    echo Place this launcher alongside flash_firmware_sideload.ps1.
    pause
    exit /b 1
)

where powershell.exe >nul 2>&1
if errorlevel 1 (
    echo Error: PowerShell is not available on this system.
    pause
    exit /b 1
)

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%PS1%" %*
exit /b %ERRORLEVEL%
