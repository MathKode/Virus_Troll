@rem Make the script restart at each session...
@echo off

xcopy /s OniiChan %AppData%\Darling /Y /I

set TARGET='%AppData%\OniiChan\launch.bat'
set SHORTCUT='%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Darling.lnk'
set PWS=powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile

%PWS% -Command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut(%SHORTCUT%); $S.TargetPath = %TARGET%; $S.Save()"

"%APPDATA%\Darling\launch.bat"

exit

