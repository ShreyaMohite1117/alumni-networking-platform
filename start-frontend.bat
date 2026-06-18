@echo off
echo ==========================================
echo   Alumni Platform - Starting Frontend...
echo ==========================================
cd /d "%~dp0frontend"
echo Installing npm packages...
call npm install
echo Starting React development server...
call npm start
pause
