@echo off
REM ============================
REM Push Ethereum Project to GitHub
REM ============================

REM Go to your project folder (edit this path if needed)
cd C:\Users\Pratyush\Downloads\Projects\Ethereum-Script

REM Stage all changes
git add .

REM Commit with timestamp message
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set datetime=%%I
set msg=Auto commit on %datetime%
git commit -m "%msg%"

REM Push to GitHub
git push origin master

echo ============================
echo ✅ Code pushed successfully!
echo ============================

pause
