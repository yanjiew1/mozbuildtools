@echo off
cls
echo  Mozbuildtools Version: %VERSION%
echo ________________________________________________________________________________
echo         �U���ɮפ�(%2)...
echo %1
..\tools\wget -c %1

if exist %2 goto success
cls
echo  Mozbuildtools Version: %VERSION%
echo ________________________________________________________________________________
echo         �U���ɮ�(%2)����!
echo.
echo.
pause
exit
:success