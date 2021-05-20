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
echo.
echo $: £unLˆ
pause
----------------------------
:hlp
echo Copy the name of the WIFI by selecting with the mouse and pressing right click.
echo.
echo To paste the copied text, press right click again.
echo.
echo You will find the network key somewhere at the bottom
echo.
set /p qst=Press Enter to get back
goto a
-----------------------------
:b
netsh wlan show profile name=%input% key=clear
pause
-----------------------------
$: £unLˆ
