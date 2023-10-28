@ECHO OFF

:: Load environment variables from .env file
for /f "delims=" %%a in (.env) do (
    set "%%a"
)

SET "%REPO_NAME%=tesing-repo"
SET "LOCAL_FOLDER_PATH=testing-repo"

ECHO Username: %GITHUB_USERNAME%
ECHO Password: %GITHUB_PASSWORD%
ECHO Token: %GITHUB_ACCESS_TOKEN%

:: Create GitHub repository
curl -u %GITHUB_USERNAME%:%GITHUB_ACCESS_TOKEN% https://api.github.com/user/repos -d "{\"name\":\"%REPO_NAME%\"}"

:: Initialize local folder as a Git repository
CD %LOCAL_FOLDER_PATH%
git init

:: Add GitHub repository as remote
git remote add origin https://github.com/%GITHUB_USERNAME%/%REPO_NAME%.git

:: Add all files, commit, and push to GitHub
git add .
git commit -m "Initial commit"
git push -u origin master

PAUSE