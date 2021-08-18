@echo off
title Type ? or help for a little tutorial
cls
goto a
----------------------------
:a
cls
netsh wlan show profile
set /p input=Enter Name: 
goto iffer
----------------------------
:iffer
if %input%==help (goto hlp)
if %input%==? (goto hlp)
if %input%==credits (goto c) else (goto b)
exit
----------------------------
:c
cls
echo Code version 1.1.0
echo Copyright forever
echo.
echo $: £unLˆ
set /p blank=  
goto a
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
set /p q=Finished?(Y/N)
if %q%==Y (goto end)
if %q%==y (goto end)
if %q%==N (goto a)
if %q%==n (goto a) else (exit)
exit
-----------------------------
:end
echo thx for use
timeout 3
exit
-----------------------------
$: £unLˆ
