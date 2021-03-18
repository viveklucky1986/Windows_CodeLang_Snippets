@echo off
net file 1>NUL 2>NUL
if not '%errorlevel%' == '0' (
    powershell Start-Process -FilePath "%0" -ArgumentList "%cd%" -verb runas >NUL 2>&1
    exit /b
)
cd /d %1

TAKEOWN /F %SystemRoot%\System32\WaaSMedicSvc.dll
NET STOP WaaSMedicSvc & NET STOP wuauserv & SC STOP WaaSMedicSvc & SC STOP wuauserv
TAKEOWN /F %WinDir%\Logs /A /R && ICACLS %WinDir%\Logs /GRANT:R %UserName%:F /T && DEL /F /S /Q %WinDir%\*.etl
DEL /F /S /Q %SystemDrive%\*.etl & DEL /F /S /Q %SystemDrive%\*.etl
DEL /F /S /Q %SystemDrive%\*.tmp & DEL /F /S /Q %SystemDrive%\*.tmp
DEL /F /S /Q %SystemDrive%\*._mp & DEL /F /S /Q %SystemDrive%\*._mp
DEL /F /S /Q %SystemDrive%\*.log & DEL /F /S /Q %SystemDrive%\*.log
DEL /F /S /Q %SystemDrive%\*.gid & DEL /F /S /Q %SystemDrive%\*.gid
DEL /F /S /Q %SystemDrive%\*.chk & DEL /F /S /Q %SystemDrive%\*.chk
DEL /F /S /Q %SystemDrive%\*.old & DEL /F /S /Q %SystemDrive%\*.old
DEL /F /S /Q %SystemDrive%\*.tor* & DEL /F /S /Q %SystemDrive%\*.tor*
PAUSE
