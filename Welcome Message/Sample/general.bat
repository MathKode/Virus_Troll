@echo off
echo """""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo "           __________                                  "
echo "         .'----------`.                                "
echo "         | .--------. |                                "
echo "         | |########| |       __________               " 
echo "         | |########| |      /__________\              "
echo ".--------| `--------' |------|    --=-- |-------------."
echo "|        `----,-.-----'      |o ======  |             |"
echo "|       ______|_|_______     |__________|             |"
echo "|      /  %%%%%%%%%%%%%%%%%%%%%%%%  \                             |"
echo "|     /  %%%%%%%%%%%%%%%%%%%%%%%%%%%%  \                            |"
echo "|     ^^^^^^^^^^^^^^^^^^^^                            |"
echo "+-----------------------------------------------------+" 
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
echo.
echo You had been HACKED...                                             

set /A nb=1
:loop
timeout /t 1 /nobreak  >nul
color %nb%
set /A nb=nb%%9+1
goto loop
