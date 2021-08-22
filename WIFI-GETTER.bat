Rem Welcome, to the Dev-Version, how you see the code is divided into groups, so it is easier to have a look and explain.
Rem Have fun
----------------------------
rem The 'goto's are for navigation into the different parts.
@echo off
title Type ? or help for a little tutorial
cls
goto a
rem You see, this part is only for visuals, you could say it's the UI, so the user can see, what he can do if he has no clue.
----------------------------
:a
cls
netsh wlan show profile
set /p input=Enter Name: 
goto iffer
rem In part 'a' the program is showing the wifi names we can 'hack' into, so you only have to copy the name and the program is going to part ':iffer'
rem The input variable has the name of the wifi, so we can use it later
----------------------------
:iffer
if %input%==help (goto hlp)
if %input%==? (goto hlp)
if %input%==credits (goto c) else (goto b)
exit
rem Here it just checks which the answer is. Is it a tutorial (hlp)? Or Credts (c)? Or does the user want to continue (b)?
----------------------------
:c
cls
echo Code version Basic
echo Copyright forever
echo.
echo $: £unLˆ
set /p blank=  
goto a
rem It's just the credits and a 'set /p', so the credits wont be blown away instantly.
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
rem It's just the tutorial, also with a 'set /P', so the user can stand here for a while.
-----------------------------
:b
netsh wlan show profile name=%input% key=clear
set /p q=Finished?(Y/N)
if %q%==Y (goto end)
if %q%==y (goto end)
if %q%==N (goto a)
if %q%==n (goto a) else (exit)
exit
rem Here the interesting thing begins. The input variable is a placeholder for the 'name=', so that the name the user typed in can be used for the command to show us the password.
rem Then the program asks for if the user is finished. If the answer is yes (y) it will be directed to end, if he's not, the program will iterate and if he just presses anything, the program will just stop.
-----------------------------
:end
echo thx for use
timeout 3
exit
rem It's the end message with a 3 second timeout.
-----------------------------
$: £unLˆ