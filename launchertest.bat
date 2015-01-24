cd src

rem Get the user input:
set /P ttiUsername="Username: "
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

..\panda3d-1.9.0\python\ppython.exe -m toontown.toonbase.ClientStart

