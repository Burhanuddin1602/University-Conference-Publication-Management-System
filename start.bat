@echo off
title Conference Management Portal
cd /d "%~dp0"

echo ===================================================
echo   ICRAS 2026 - Conference Management Portal
echo ===================================================
echo.
echo Starting Node.js server...
echo URL: http://localhost:3000
echo (Keep this window open while using the website)
echo.

:: Automatically open browser after launching
start http://localhost:3000

node server.js
echo.
echo Server has stopped.
pause
