@echo off
setlocal
cd /d "%~dp0"
title Door Count: connect GitHub
echo This runs once. It lets GitHub put Door Count online by itself.
echo.
echo When it asks:
echo   - Sign in to Google and GitHub in the browser windows it opens.
echo   - "For which GitHub repository": type  YOURNAME/doorcount
echo   - "Set up the workflow to run a build script": No
echo   - "Set up automatic deployment to your site live channel when a PR is merged": Yes
echo   - "What is the name of the GitHub branch": main
echo   - If it asks to overwrite the workflow file: No
echo.
pause
call npx.cmd --yes firebase-tools@latest init hosting:github --project doorcount-jesse2026
echo.
pause
