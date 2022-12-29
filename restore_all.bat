@rem Execute all the restore file to remove all troll virus
@echo off

echo --- Infinite_Calculator ---
cd Infinite_Calculator
wscript.exe "..\sample.vbs" ".\restore.bat"
cd ..

echo --- Black_Screen ---
cd Black_Screen
wscript.exe "..\sample.vbs" ".\restore.bat"
cd ..

echo --- Shrek_Cursor ---
cd Shrek_Cursor
wscript.exe "..\sample.vbs" ".\restore.bat"
cd ..

echo --- BackGround_Virus ---
cd BackGround_Virus
wscript.exe "..\sample.vbs" ".\restore.bat"
cd ..

echo --- OniiChan_Virus ---
cd OniiChan_Virus
wscript.exe "..\sample.vbs" ".\reset.bat"
cd ..

echo --- Welcome_Message ---
cd Welcome_Message
wscript.exe "..\sample.vbs" ".\restore.bat"
cd ..

echo --- END RESTORE ---
pause