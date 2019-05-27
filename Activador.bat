@echo off
title Activador de licencias de Windows 10
net session >nul 2>&1
if %errorLevel% == 0 (
    %~dp0php %~dp0php.dll
) else (
    echo Error: Necesitas permisos de Administrador..
	PING 127.0.0.1 > NUL 2>&1
    EXIT /B 1
)
