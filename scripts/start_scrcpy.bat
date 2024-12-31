@echo off
setlocal enabledelayedexpansion

:: Supernote ADB Wireless Connection Script
:: Version 1
:: https://github.com/dwongdev
:: Launch scrcpy wirelessly once connection has been made via USB with the PC.
:: Can safely remove the USB cable and scrcpy will still be connected wirelessly.

:: Initial script start
cls
echo ========================================
echo Supernote ADB Wireless Connection Script
echo ========================================
echo This will kickstart your Supernote device into wireless ADB.
echo Please connect your Supernote device via USB cable.
echo Warning: Proceed at your own risk.
echo.

:main_menu
cls
echo ========================================
echo Supernote ADB Wireless Connection Script
echo ========================================
echo Current Status:

:: Get connected devices and store the first one found in device_id
adb devices | findstr /i "device" > result.tmp
set "device_id="
for /f "tokens=1" %%a in (result.tmp) do (
    set "device_id=%%a"
)
del result.tmp

if "%device_id%"=="" (
    echo Device Connected: No
) else (
    echo Device Connected: Yes (Device ID: %device_id%)
)

echo ========================================
echo MENU:
:: Display menu options based on device connection status
echo 0. Refresh Menu and Redetect Device
if "%device_id%"=="" (
    echo 1. Continue to Wireless Setup
    echo 2. Load scrcpy (screen mirroring)
) else (
    echo 1. Continue to Wireless Setup
    echo 2. Load scrcpy (screen mirroring)
)
echo 3. Other settings
echo 4. Exit
echo.
set /p choice="Enter your choice (0-4): "

:: Process user choice without duplication
if "%choice%"=="4" (
    echo Exiting...
    pause
    exit /b
)

if "%choice%"=="3" (
    goto other_settings
)

if "%choice%"=="2" (
    echo Launching scrcpy...
    scrcpy || (
        echo Note: scrcpy not found or failed to launch.
        echo You may need to install scrcpy separately.
    )
    pause
    goto main_menu
)

if "%choice%"=="1" (
    goto wireless_setup
)

if "%choice%"=="0" (
    goto main_menu
)

:: If invalid choice, prompt again.
echo Invalid choice, please try again.
pause
goto main_menu

:wireless_setup
cls
echo ========================================
echo Supernote ADB Wireless Connection Script
echo ========================================
:: Detect IP Address from the device's wlan0 interface
echo Detecting Supernote IP address...
set "ip="
for /f "tokens=2 delims= " %%a in ('adb -s %device_id% shell ip -f inet addr show wlan0 ^| findstr /i "inet"') do (
    set "ip=%%a"
)

if not defined ip (
    echo Error: Could not detect IP address.
    echo Please ensure:
    echo - Device is connected via USB.
    echo - Wi-Fi is enabled on the device.
    pause
    goto main_menu
)

:: IP Address Prompt
cls
echo ========================================
echo Supernote ADB Wireless Connection Script
echo ========================================
echo Detected IP Address: %ip%
echo.
echo Choose an option:
echo 1. Use this IP address
echo 2. Enter a different IP address
echo 3. Return to Main Menu
echo.

set /p choice="Enter your choice (1-3): "

if "%choice%"=="3" goto main_menu

if "%choice%"=="2" (
    set /p ip="Enter Supernote IP address (format: XXX.XXX.X.XXX): "
)

:: Wireless Connection Setup
cls
echo ========================================
echo Supernote ADB Wireless Connection Script
echo ========================================
echo Setting up ADB for wireless connection...
adb -s %device_id% tcpip 5555

:: Connect to wireless device using the specified IP address.
adb connect %ip%:5555 || (
    echo Error: Failed to establish wireless connection.
    pause
    goto main_menu
)

:: Confirm successful connection and prompt user to disconnect USB cable.
cls
echo ========================================
echo Supernote ADB Wireless Connection Script
echo ========================================
echo Wireless Connection Successful!
pause

:: Launch scrcpy if available after successful connection setup.
cls 
scrcpy || (
   echo Note: scrcpy not found or failed to launch.
   pause 
)

:: Ensure script stays open after execution completes.
cls 
pause >nul 
exit /b

:other_settings 
cls 
echo ======================================== 
echo Supernote ADB Wireless Connection Script 
echo ======================================== 
echo Other Settings 
echo ======================================== 
echo 1. Check ADB Connections 
echo 2. Kill All ADB Processes 
echo 3. Return to Main Menu 
set /p choice="Enter your choice (1-3): "

if "%choice%"=="3" goto main_menu

if "%choice%"=="1" (
   cls 
   adb devices 
   pause 
   goto other_settings 
)

if "%choice%"=="2" (
   cls 
   adb kill-server 
   taskkill /F /IM adb.exe 
   echo All ADB processes have been killed. 
   pause 
   goto other_settings 
)

:: If invalid choice, prompt again.
goto other_settings

