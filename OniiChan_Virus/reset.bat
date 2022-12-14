@echo off

@rem Set Default Sound
set empty_string=""
set music_path="D:\Ecole\Programation\Batch\HoniChan Virus\.wav"
FOR /F "delims=, tokens=1,2" %%a IN (registre_value.txt) DO (
    @rem l contain the REGISTRE KEY TO CHANGE
    
    echo.
    echo KEY : %%a 
    echo VALUE : %%b
    echo.
    
    REG DELETE %%a /f
    REG ADD %%a /t REG_SZ /d "%%b" /f
)

@rem Delete FILE
del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\oniichan.lnk"
rmdir /S /Q %AppData%\OniiChan
