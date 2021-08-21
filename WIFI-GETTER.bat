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
if %input%==credits (goto c) else (goto d)
exit
----------------------------
:c
cls
echo Code version 3.0.0
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
echo The password will be copied into a folder called files in a file called notes.txt.
echo.
echo After pressing enter or y at the end, the program will be deleted automatically.
echo.
set /p qst=Press Enter to get back 
goto a
-----------------------------
:d
if EXIST files (goto extra)
mkdir files
:extra
cd files
goto b
-----------------------------
:b
netsh wlan show profile name=%input% key=clear >> notes.txt
cls
netsh wlan show profile name=%input% key=clear
set /p q=Finished?(Y/N): 
if %q%==Y (goto end)
if %q%==y (goto end)
if %q%==N (goto a)
if %q%==n (goto a) else (goto end)
exit
-----------------------------
:end
cd ..
del /Q /F WIFI-GETTER.bat
-----------------------------
$: £unLˆ
