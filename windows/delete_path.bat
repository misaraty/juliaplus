@echo off
setlocal enabledelayedexpansion
set regpath=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
set evname1=JULIA_DEPOT_PATH
set evname2=JULIA_PKG_SERVER
set path1=%~dp0bin
reg delete "%regpath%" /v "%evname1%"  /f
setx /m path "!path:%path1%;=!"
reg delete "%regpath%" /v "%evname2%"  /f
pause>nul