@echo off
@rem OKKO
set pre_path=%AppData%\Darling
wscript.exe "%pre_path%\launch.vbs" "%pre_path%\main.bat"
@rem OKKO
wscript.exe "%pre_path%\launch.vbs" "%pre_path%\volume.bat"
exit