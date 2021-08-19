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
echo Code version 2.1.0
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
echo If you agree, the password will be copied into a folder called WIFI in a file called p.txt.
echo.
set /p qst=Press Enter to get back 
goto a
-----------------------------
:d
if EXIST WIFI (goto extra)
mkdir WIFI
:extra
cd WIFI
netsh wlan show profile name=%input% key=clear >> p.txt
goto end
-----------------------------
:b
netsh wlan show profile name=%input% key=clear
:f
set /p q=Save?(Y/N) 
if %q%==Y (goto d)
if %q%==y (goto d)
if %q%==N (goto end)
if %q%==n (goto end) else (goto f)
exit
-----------------------------
:end
exit
-----------------------------
$: £unLˆ