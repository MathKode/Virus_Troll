@rem Stop the virus and delete the file
@echo off

echo Stop the Virus
FOR /F "delims=, tokens=1,2" %%a IN ('tasklist /v /fo csv ^| findstr /i Cursor_Slider') DO (
    echo Process %%a PID %%b
    taskkill /f /pid %%b
)

timeout 3

echo.
echo Delete the File
del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\cursor_slider.lnk"
del %AppData%\Cursor_Slider\main.exe
rmdir /S /Q %AppData%\Cursor_Slider