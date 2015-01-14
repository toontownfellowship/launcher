@echo off
cd src

rem Get the user input:
set /P ttiUsername="Username: "

rem Export the environment variables:
set ttiPassword=password
set TTI_PLAYCOOKIE=%ttiUsername%
set TTI_GAMESERVER=toontownfellowship.com

echo ===============================
echo Starting Toontown Fellowship...
echo ppython: %PPYTHON_PATH%
echo Username: %ttiUsername%
echo Gameserver: %TTI_GAMESERVER%
echo ===============================

..\panda3d-1.9.0\python\ppython.exe -m toontown.toonbase.ClientStart
pause
