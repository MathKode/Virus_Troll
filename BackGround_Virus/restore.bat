@rem Restore
@echo off
set RESTORE=1
if %RESTORE%==1 (
    for /F "delims=REG_SZ tokens=2" %%a IN (old_background.txt) DO (
        echo %%a > path.txt
        for /F "tokens=1" %%f IN (path.txt) DO (
            REG DELETE "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /f
            REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /t REG_SZ /d "%%f" /f
        )
    )
)

@rem Delete FILE
del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\background_v.lnk"
rmdir /S /Q %AppData%\BackGround_Virus
del %AppData%\background.jpg