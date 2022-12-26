@rem Modifie les curseur par shrek !
@echo off

set shrek_path="%AppData%\Shrek\Shrek2.cur"

FOR /F "delims=, tokens=1,2" %%a IN (.\code\key.txt) DO (
    echo Key: %%a
    REG DELETE "HKEY_CURRENT_USER\Control Panel\Cursors" /v "%%a" /f
    REG ADD "HKEY_CURRENT_USER\Control Panel\Cursors" /v "%%a" /t REG_EXPAND_SZ /d %shrek_path% /f
)
.\code\cursor_reload.exe