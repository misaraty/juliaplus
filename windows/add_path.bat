@echo off
set regpath=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
set evname1=JULIA_DEPOT_PATH
set evname2=JULIA_PKG_SERVER
set path1=%~dp0bin
set path2=%~dp0.julia
set path3=https://mirrors.bfsu.edu.cn/julia
reg add "%regpath%" /v %evname1% /d %path2% /f
setx /m path "%path%;%path1%"
reg add "%regpath%" /v %evname2% /d %path3% /f
pause>nul

