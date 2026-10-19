@echo off
cd /d "%~dp0PharmaSync"
if not exist mvnw.cmd (
  echo Could not find mvnw.cmd in %cd%
  pause
  exit /b 1
)
set /p DB_PASSWORD=MySQL root password: 
call mvnw.cmd clean spring-boot:run
pause