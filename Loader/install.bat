@echo off
title Installing Python Dependencies (Red Raider)
color 0F
echo [!] Checking Python installation...
where python >nul 2>&1
if errorlevel 1 (
    echo Python is not installed or not in PATH.
    echo Please install Python and ensure it's added to your system PATH.
    pause
    exit /b
)
echo [!] Upgrading pip...
python -m pip install --upgrade pip

echo [!] Installing required modules...
python -m pip install requests colorama
echo.
echo [✔] All dependencies installed!
pause
