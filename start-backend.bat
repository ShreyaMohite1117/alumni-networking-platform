@echo off
echo ==========================================
echo   Alumni Platform - Starting Backend...
echo ==========================================
cd /d "%~dp0backend"
echo Running: mvn clean install + spring-boot:run
call mvn clean install -DskipTests
call mvn spring-boot:run
pause
