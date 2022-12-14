@echo off
set pre_path=%AppData%\OniiChan
wscript.exe "%pre_path%\launch.vbs" "%pre_path%\main.bat"
wscript.exe "%pre_path%\launch.vbs" "%pre_path%\volume.bat"
exit