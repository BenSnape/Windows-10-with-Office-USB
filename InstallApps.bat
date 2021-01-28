REM https://en.it-pirate.eu/windows-10-provisioning-packages-install-multiple-applications-by-command-line/
REM https://docs.microsoft.com/en-us/windows/configuration/provisioning-packages/provisioning-script-to-install-app
REM Create Logfile Directories 
IF NOT EXIST "C:\Temp\ApplicationLogs" MD "C:\Temp\ApplicationLogs"
REM Install EXE
set LOGFILE-EXE=%SystemDrive%\Temp\ApplicationLogs\AdobeReader_install.log
echo Install Adobe Reader >> %LOGFILE-EXE%
AcroRdrDC2001320074_en_US.exe /sAll /rs /rps /msi /norestart /quiet EULA_ACCEPT=YES /l*v %LOGFILE-EXE%
echo result: %ERRORLEVEL% >> %LOGFILE-EXE%
REM Install MSI
set LOGFILE-MSI=%SystemDrive%\Temp\ApplicationLogs\Chrome_install.log
echo Install Chrome for Business MSI >> %LOGFILE-MSI%
msiexec /i GoogleChromeStandaloneEnterprise64.msi /quiet /l*v %LOGFILE-MSI%
echo result: %ERRORLEVEL% >> %LOGFILE-MSI%
REM Install EXE
set LOGFILE-EXE=%SystemDrive%\Temp\ApplicationLogs\Datto_install.log
echo Install Datto >> %LOGFILE-EXE%
Datto.exe /quiet /norestart /l*v %LOGFILE-EXE%
echo result: %ERRORLEVEL% >> %LOGFILE-EXE%
REM Install MSI
set LOGFILE-MSI=%SystemDrive%\Temp\ApplicationLogs\ZoomInstallerFulll.log
echo Install Zoom MSI >> %LOGFILE-MSI%
MsiExec.exe /i ZoomInstallerFull.msi /qn /l*v %LOGFILE-MSI%
echo result: %ERRORLEVEL% >> %LOGFILE-MSI%
REM Install PowerShell
set LOGFILE=%SystemDrive%\Office_powershell_script.log
echo Running my_powershell_script.ps1 in system context >> %LOGFILE%
echo Executing "cmd.exe /c PowerShell.exe -ExecutionPolicy Unrestricted .\Start-ProvisioningCommands.ps1" >> %LOGFILE%
cmd.exe /c PowerShell.exe -ExecutionPolicy Unrestricted .\Start-ProvisioningCommands.ps1 >> %LOGFILE%
echo result: %ERRORLEVEL% >> %LOGFILE%

