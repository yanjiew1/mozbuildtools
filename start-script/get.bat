@echo off
cls
echo  Mozbuildtools Version: %VERSION%
echo ________________________________________________________________________________
echo         下載檔案中(%2)...
echo %1
..\tools\wget -c %1

if exist %2 goto success
cls
echo  Mozbuildtools Version: %VERSION%
echo ________________________________________________________________________________
echo         下載檔案(%2)失敗!
echo.
echo.
pause
exit
:success