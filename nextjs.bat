@ECHO OFF

REM Load environment variables from .env file
for /f "delims=" %%a in (.env) do (
    set "%%a"
)


ECHO Username: %GITHUB_USERNAME%
ECHO Password: %GITHUB_PASSWORD%

SET /p "FOLDER_NAME=Enter a value: "
SET "DOCUMENTS_PATH=D:\Documents\GitHub\%FOLDER_NAME%"

ECHO %FOLDER_NAME%
ECHO %DOCUMENTS_PATH%

:: TODO: This ends and nothing past NPX is getting run.
NPX create-next-app@latest %DOCUMENTS_PATH% --force --ts --eslint --app --use-pnpm --tailwind --no-src-dir --import-alias @/*

PAUSE