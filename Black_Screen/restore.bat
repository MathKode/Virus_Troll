@echo off
FOR /F "delims=, tokens=2,9" %%a IN ('tasklist /v /fo csv ^| findstr /i black_screen') DO (
	echo.
    echo PID: %%a
    echo Title: %%b
    taskkill /F /PID %%a
)
echo Delete File
del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\black_screen.lnk"
rmdir /S /Q %AppData%\Black_Screen