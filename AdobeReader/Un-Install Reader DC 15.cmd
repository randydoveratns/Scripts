REM Display Name: Adobe Acrobat Reader DC
REM Display Version: 15.020.20039
REM =========================================================================================
REM Ver 1.0 2017-08-30
REM Written by Randy Dover, A-Total Network Solution, randy.dover @ atotalnetworksolution.com
REM Script may be modified, but credit may not be removed
REM =========================================================================================

REM Next line is the uninstall command
MsiExec.exe /X{AC76BA86-7AD7-1033-7B44-AC0F074E4100} /qn /norestart

REM Removes all HKEY_CLASSES_ROOT Registry Keys
Echo Y | REG DELETE HKCR\AcroExch.Document\Shell\Open\Command /VE /f

ECHO Removing HKEY_LOCAL_MACHINE Installer Keys.
echo Y | REG DELETE HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders\ /V "C:\Program Files\Adobe\Acrobat Reader DC\Reader\\" /F
echo Y | REG DELETE HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders\ /V "C:\Program Files\Adobe\Acrobat Reader DC\\" /F
echo Y | REG DELETE HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders\ /V "C:\Program Files\Adobe\\" /F
