@echo off
REM ===============================
REM Git Auto Push Script
REM ===============================

:: Change to your repo folder (update path if needed)
cd /d "C:\Users\Pratyush\Downloads\Projects\Ethereum-Script"

:: Set Git identity (only first time, remove if already set globally)
git config --global user.name "Pratyush Kesarwani"
git config --global user.email "kesarwanipratyush9@gmail.com"

:: Stage all changes
git add .

:: Create commit with current date & time
set dt=%date% %time%
git commit -m "Auto commit on %dt%"

:: Pull latest changes to avoid conflicts
git pull origin main --no-edit

:: Push to GitHub
git push origin main

echo.
echo ==============================
echo ✅ Code pushed successfully!
echo ==============================
pause
