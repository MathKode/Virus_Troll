@echo off

@rem Set Default Sound
set empty_string=""

FOR /F "delims=, tokens=1,2" %%a IN (registre_value.txt) DO (
    @rem l contain the REG ISTRE KEY TO CHANGE
    
    echo.
    echo KEY : %%a 
    echo VALUE : %%b
    echo.
    
    REG DELETE %%a /f
    REG ADD %%a /t REG_SZ /d "%%b" /f
)

@rem Delete FILE
del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Darling.lnk"
rmdir /S /Q %AppData%\Darling
