@rem Ouvre un Nombre NB de calculatrice
@echo off

title infinite_calculator
set /a NB=4

:init
FOR /L %%i IN (0,1,%NB%) DO (
    calc
)
goto loop

:loop
set /a OPEN_CALC=0
FOR /F "delims=, tokens=1,2" %%a IN ('tasklist /v /fo csv ^| findstr /i CalculatorApp.exe') DO (
    echo %%a
    echo %%b
    set /a OPEN_CALC=OPEN_CALC+1
)
echo %OPEN_CALC%
IF %OPEN_CALC% EQU 0 (
    goto init
)
timeout /t 5 /nobreak > nul
goto loop
