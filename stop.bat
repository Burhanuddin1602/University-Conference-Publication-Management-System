@echo off
title Stop Conference Management Portal
cd /d "%~dp0"

echo Stopping any running server on port 3000...
for /f "tokens=5" %%a in ('netstat -aon ^| findstr :3000 ^| findstr LISTENING') do (
    taskkill /F /PID %%a >nul 2>&1
)

echo Server stopped successfully.
timeout /t 2 >nul
