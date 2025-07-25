@echo off
title Installer 
color 0C
echo [•] Checking Python installation...
where python >nul 2>&1
if errorlevel 1 (
    echo [✘] Python is not installed or not added to PATH.
    echo [!] Download Python: https://www.python.org/downloads/
    pause
    exit /b
)
echo [✔] Python found!
echo.
echo [•] Upgrading pip...
python -m pip install --upgrade pip >nul 2>&1
echo [•] Installing required modules: requests, colorama
python -m pip install requests colorama >nul 2>&1
if %errorlevel% neq 0 (
    echo [✘] Dependency installation failed.
    pause
    exit /b
)
echo.
echo [✔] All dependencies installed successfully!
timeout /t 1 >nul
set "LOADER_EXE=%~dp0Loader\Loader.exe"
if exist "%LOADER_EXE%" (
    echo [🚀] Launching Loader...
    start "" "%LOADER_EXE%"
) else (
    pause
)

exit
