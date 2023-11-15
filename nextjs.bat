@ECHO OFF

REM Load environment variables from .env file
for /f "delims=" %%a in (.env) do (
    set "%%a"
)

:: TODO:
:: Dosent seem to work ot grab the git from gitgub desktop because I already have a git.
:: Maybe should Create the repo, then download it and then play with it.

:: Lists all my repos
gh repo list

ECHO.
SET /p "PROJECT_NAME=Enter a project name: "
SET "DOCUMENTS_PATH=D:\Documents\GitHub\%PROJECT_NAME%"
SET "REPO_URL=https://github.com/%GITHUB_USERNAME%/%PROJECT_NAME%"


:: Creates a github repo
gh repo create %PROJECT_NAME% --private

:: Creates a folder
MD %DOCUMENTS_PATH%

:: Go to the folder
CD %DOCUMENTS_PATH%

:: Initialize the folder as a Git repository
git init

:: Add the remote repository to the local repository
git remote add origin %REPO_URL%

:: Push to the remote repository
:: CHANGED master TO main
git push origin main

:: TODO: This ends and nothing past NPX is getting run.
NPX create-next-app@latest %DOCUMENTS_PATH% --force --ts --eslint --app --use-pnpm --tailwind --no-src-dir --import-alias @/*

PAUSE