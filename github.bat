@ECHO OFF

:: https://docs.github.com/rest/repos/repos#create-a-repository-for-the-authenticated-user
:: https://cli.github.com/manual/gh_repo_create

:: Load environment variables from .env file
for /f "delims=" %%a in (.env) do (
    set "%%a"
)

SET "REPO_NAME=boring-automation"
::SET "LOCAL_FOLDER_PATH=boring-automation"
SET "GITHUB_FOLDER_PATH=D:\Documents\GitHub\"
SET "REPO_FOLDER_PATH=%GITHUB_FOLDER_PATH%%REPO_NAME%"
::SET ""

ECHO Username: %GITHUB_USERNAME%
ECHO Password: %GITHUB_PASSWORD%
ECHO Token: %GITHUB_ACCESS_TOKEN%
ECHO Repo Name: %REPO_NAME%
ECHO Github Folder: %GITHUB_FOLDER_PATH%
ECHO Repo Folder: %REPO_FOLDER_PATH%
::ECHO Github Folder Path: %GITHUB_FOLDER_PATH%

:: Create GitHub repository
::curl -u %GITHUB_USERNAME%:%GITHUB_ACCESS_TOKEN% https://api.github.com/user/repos -d "{\"name\":\"%REPO_NAME%\"}"

:: Creates new Repo Path
::MD %REPO_FOLDER_PATH% 
CD %REPO_FOLDER_PATH%

::gh auth login --with-token %GITHUB_ACCESS_TOKEN%
::gh auth login --oauth
gh repo create %REPO_NAME% --private


::git init
::git add .
::git commit -m "First Commit"
::curl -u "%GITHUB_USERNAME%:%GITHUB_ACCESS_TOKEN%" https://api.github.com/user/repos "{'name': '%REPO_NAME%\'}"
::git remote add origin git@github.com:%GITHUB_USERNAME%/%REPO_NAME%.git
::git push -u origin master

::curl -u Amruth-Smaragdine https://api.github.com/user/repos -d "{\"name\": \"testrepo\"}"

:: Initialize local folder as a Git repository
::CD %LOCAL_FOLDER_PATH%
::git init

:: Add GitHub repository as remote
::git remote add origin https://github.com/%GITHUB_USERNAME%/%REPO_NAME%.git

:: Add all files, commit, and push to GitHub
::git add .
::git commit -m "Initial commit"
::git push -u origin master

PAUSE