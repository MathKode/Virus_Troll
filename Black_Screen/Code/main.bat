@rem Fait un écran noire chaque TIME seconde
@echo off
title black_screen
powershell (Get-WmiObject Win32_Process -Filter ProcessId=$PID).ParentProcessId > name.txt
set /a TIME=25
:loop
set PWS=powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile
%PWS% -Command "C:\Windows\System32\scrnsave.scr"
timeout /t %TIME% > nul
goto loop