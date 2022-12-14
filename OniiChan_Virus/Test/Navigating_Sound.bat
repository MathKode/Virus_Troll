@rem Set the Navigation SOUND
@echo off
set music_path="D:\Ecole\Programation\Batch\HoniChan Virus\Onii.wav"
REG DELETE HKEY_CURRENT_USER\AppEvents\Schemes\Apps\Explorer\Navigating\.Current /f
REG ADD HKEY_CURRENT_USER\AppEvents\Schemes\Apps\Explorer\Navigating\.Current /t REG_SZ /d %music_path% /f
