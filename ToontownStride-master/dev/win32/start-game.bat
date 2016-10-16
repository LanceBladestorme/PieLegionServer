@echo off

title Pie Legion Game Launcher

echo Choose your connection method!
echo.
echo #1 - Connect to Pie Legion Server - Clover is Host
echo #2 - Connect to Pie Legion Server - Ziggy is Host
echo.

:selection

set INPUT=-1
set /P INPUT=Selection: 

if %INPUT%==1 (
    set TTS_GAMESERVER=25.10.246.134
) else if %INPUT%==2 (
    set TTS_GAMESERVER=25.117.7.181
) else (
	goto selection
)

echo.

if %INPUT%==2 (
    set /P TTS_PLAYCOOKIE=Username:
) else (
    set /P TTS_PLAYCOOKIE=Username: 
)

echo.

echo ===============================
echo Starting Toontown Stride...
echo ppython: "C:\Panda3D-1.10.0\python\ppython.exe"

if %INPUT%==2 (
    echo Username: %TTS_PLAYCOOKIE%%
) else (
    echo Username: %TTS_PLAYCOOKIE%
)

echo Gameserver: %TTS_GAMESERVER%
echo ===============================

cd ../../

:main
if %INPUT%==2 (
    "C:\Panda3D-1.10.0\python\ppython.exe" -m toontown.toonbase.ToontownStart
) else (
    "C:\Panda3D-1.10.0\python\ppython.exe" -m toontown.toonbase.ToontownStart
)
pause

goto main
