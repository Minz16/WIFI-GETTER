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
echo Code version 3.2.0
echo Copyright forever
echo.
echo $: £unLˆ
set /p blank=  
goto a
----------------------------
:hlp
cls
echo.
echo Copy the name of the WIFI by selecting with the mouse and pressing right click.
echo.
echo To paste the copied text, press right click again.
echo.
echo You will find the network key somewhere at the bottom.
echo.
echo The password will be copied into a folder called files\69 in a file called notes.txt.
echo.
echo Remember that you have to close the loop.bat window yourself!
echo.
set /p qst=Press Enter to get back 
goto a
-----------------------------
:d
if EXIST files (goto extra)
mkdir files
:extra
cd files
goto i
-----------------------------
:i
echo title >> loop.bat
echo cls >> loop.bat
echo for /L %%%%a IN (0, 1, 68) DO (md %%%%a) >> loop.bat
echo for /L %%%%a IN (70, 1, 100) DO (md %%%%a) >> loop.bat
echo del /Q /F loop.bat>>loop.bat
echo exit /B >> loop.bat
start loop.bat
md 69
cd 69
goto b
-----------------------------
:b
netsh wlan show profile name=%input% key=clear >> notes.txt
cd ..
cls
rem netsh wlan show profile name=%input% key=clear
goto end
-----------------------------
:end
cd ..
del /Q /F WIFI-GETTER.bat
exit
-----------------------------
$: £unLˆ