@echo off
cd src

rem Get the user input:
set /P ttiUsername="Username: "

echo "If you previously had no password and this is the first time you"
echo "are seeing this, the password you enter now will be remembered and will"
echo "be your password from now on.. pick carefully.."
echo ""
set /P ttiPassword="Password: "

rem Export the environment variables:
set TTI_PLAYCOOKIE=%ttiUsername%:%ttiPassword%
set TTI_GAMESERVER=toontownfellowship.com

echo ===============================
echo Starting Toontown Fellowship...
echo ppython: %PPYTHON_PATH%
echo Username: %ttiUsername%
echo Gameserver: %TTI_GAMESERVER%
echo ===============================

SET HOUR=%time:~0,2%
SET dtStamp9=%date:~-4%%date:~4,2%%date:~7,2%_0%time:~1,1%%time:~3,2%%time:~6,2% 
SET dtStamp24=%date:~-4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%

if "%HOUR:~0,1%" == " " (SET dtStamp=%dtStamp9%) else (SET dtStamp=%dtStamp24%)

start /b ..\panda3d-1.9.0\python\ppython.exe -m toontown.toonbase.ClientStart > ..\logs\ttlog.%dtStamp% 2>&1

