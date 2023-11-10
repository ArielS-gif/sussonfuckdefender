

@echo off

echo --------------------------sassonfuckdefender--------------------------

goto check_Permissions

:check_Permissions
    echo Administrative permissions required. Detecting permissions...
    
    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Windows Defender Has Been Succesfully Disabled! Please restart Your computer.
    reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t "REG_DWORD" /d "0" /f
    ) else (
        echo ERROR! Please run the file as administrator
    )
echo ----------------------------------------------------------------------

    pause >nul


