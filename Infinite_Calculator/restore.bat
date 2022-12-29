@rem Supp the File and stop the process
@echo off
FOR /F "delims=, tokens=2,9" %%a IN ('tasklist /v /fo csv ^| findstr /i infinite_calculator') DO (
	echo.
    echo PID: %%a
    echo Title: %%b
    taskkill /F /PID %%a
)
echo Delete File
del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\infinite_calculator.lnk"
rmdir /S /Q %AppData%\Infinite_Calculator
echo.
echo Restore END