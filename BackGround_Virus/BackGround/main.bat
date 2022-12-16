@rem Change le fond d'écran
@echo off

ping -n 1 google.com

if errorlevel 1 (
  echo Connection is down
  set DOWLOAD_PICTURE=0
) else (
  echo Connection is up
  set DOWLOAD_PICTURE=1
)


set URL_LIST[0].url=https://images.alphacoders.com/302/302321.jpg
set URL_LIST[1].url=https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgZZ9IG6oY3Jc_9PLmQsILXHWg5MOKPB6C-g&usqp=CAU
set URL_LIST[2].url=https://static.hitek.fr/img/actualite/2015/09/21/w_trou.jpg
set URL_LIST[3].url=https://img.le-dictionnaire.com/waifu.jpg
set URL_LIST[4].url=http://images6.fanpop.com/image/photos/41400000/Cat-anime-girls-anime-41468352-500-699.jpg

set SAVE_PATH=%AppData%\background.jpg

set /a nb=%random%%%5
echo Random Index : %nb%
set command=%%URL_LIST[%nb%].url%%
FOR /F "" %%i IN ('echo %command%') DO (
    set URL=%%i
)
echo %URL%

if %DOWLOAD_PICTURE% == 1 (
    echo Download Picture
    powershell -command "Invoke-WebRequest -Uri %URL% -OutFile %SAVE_PATH%"
) else (
    copy %AppData%\BackGround_Virus\background1.jpg %SAVE_PATH%
)


REG DELETE "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /f
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /t REG_SZ /d "%SAVE_PATH%" /f

