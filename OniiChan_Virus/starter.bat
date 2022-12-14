@rem Make the script restart at each session...
@echo off

xcopy /s OniiChan %AppData%\OniiChan /Y

set TARGET='%AppData%\OniiChan\launch.bat'
set SHORTCUT='%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\oniichan.lnk'
set PWS=powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile

%PWS% -Command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut(%SHORTCUT%); $S.TargetPath = %TARGET%; $S.Save()"

exit

