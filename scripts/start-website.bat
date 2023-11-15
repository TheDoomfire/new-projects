@ECHO OFF
title Running Server
set VS_Code_title=VS Code

START http://localhost:3000/

:: Checks if process is running.
set "processName=Code.exe"
tasklist /FI "IMAGENAME eq %processName%" 2>NUL | find /I "%processName%" >NUL
if not "%ERRORLEVEL%"=="0" (
    :: Runs VS Code.
    START /WAIT "%VS_Code_title%" cmd /c code "%~dp0"
    taskkill /FI "WINDOWTITLE eq %VS_Code_title%" /F
    CLS
)

:: Runs the server at the underlying folder frontend.
CD "%~dp0frontend"
NPM run dev

EXIT
