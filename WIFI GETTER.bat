@echo off
title Type ? or help for a little tutorial
cls
goto a
----------------------------
:a
cls
netsh wlan show profile
set /p input=Enter Name
goto iffer
----------------------------
:iffer
if %input%==help(goto hlp)
if %input%==?(goto hlp)
if %input%==credits(goto c) else(goto b)
----------------------------
:c
cls
echo Code version 1.00
echo Copyright 2020 
