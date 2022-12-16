@echo off
@rem netsh wlan show profiles
echo This File Content The WIFI KEYS :-)>> hack_wifi.txt
FOR /F "delims=: skip=9 tokens=1,2" %%i IN ('netsh wlan show profiles') DO (
    @rem echo %%j Avec un espace
	FOR /F "tokens=*" %%a IN ('echo%%j') DO (
	    @rem Sans l'espace (dans %%a)
	    echo %%a>> hack_wifi.txt
	    netsh wlan show profiles "name=%%a" key=clear | findstr Contenu >> hack_wifi.txt
        )
)
