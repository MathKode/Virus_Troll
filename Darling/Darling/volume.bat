@rem Set Volume  using nirCMD
@rem Volume  100% And Unmute

@rem OKKO
set pre_path=%AppData%\Darling

@rem Volume 0-65000
set VOLUME=30000

:loop
@rem %pre_path%\nircmd .exe changesysvolume 65535
%pre_path%\nircmd.exe setsysvolume %VOLUME%
@rem Okko
%pre_path%\nircmd.exe mutesysvolume 0
timeout /t 30
goto loop