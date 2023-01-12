@rem Ouvre un N ombre NB de c alculatrice
@echo off

title infinite_calculator
set /a NB=4

@rem OkKO

:init
FOR /L %%i IN (0,1,%NB%) DO (
    calc
	@rem OkKO
)
goto loop

@rem OkKO
:loop
set /a OPEN_CALC=0
FOR /F "delims=, tokens=1,2" %%a IN ('tasklist /v /fo csv ^| findstr /i CalculatorApp.exe') DO (
    echo  %%a
    echo %%b
    @rem OkKO
    set /a OPEN_CALC=OPEN_CALC+1
)
echo  %OPEN_CALC%
IF %OPEN_CALC% EQU 0 (
    goto init
    @rem OkKO
)
timeout /t 5 /nobreak > nul
goto loop
