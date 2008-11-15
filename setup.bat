@echo off
set VERSION=0.3b1
echo  Mozbuildtools Version: %VERSION%
echo ________________________________________________________________________________
echo.
echo       歡迎使用 Mozbuildtools 設定程式，要執行之前，請先檢查以下設定：
echo.
echo             1. 網路是否正常連線
echo             2. 資料夾是否可以寫入
echo.
echo.
echo       如果以上設定都沒有問題，就可以繼續安裝。
echo       注意: 安裝時會將所有檔案清除
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo ________________________________________________________________________________
pause

cls
echo  Mozbuildtools Version: %VERSION%
echo ________________________________________________________________________________
mkdir download 2> nul
echo         刪除已經存在的檔案...
rmdir /S /Q download > nul 2> nul
rmdir /S /Q NSIS > nul 2> nul
rmdir /S /Q msys > nul 2> nul
rmdir /S /Q MinGW > nul 2> nul
rmdir /S /Q Mercurial > nul 2> nul
rmdir /S /Q moztools > nul 2> nul
rmdir /S /Q python26 > nul 2> nul
del start-msys.bat > nul 2> nul
del install-python.bat > nul 2> nul
mkdir download > nul 2> nul

cd download
call ..\tools\get.bat http://www.python.org/ftp/python/2.6/python-2.6.msi
call ..\tools\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/bash-3.1-MSYS-1.0.11-1.tar.bz2
call ..\tools\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/bison-2.3-MSYS-1.0.11-1.tar.bz2
call ..\tools\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/cvs-1.11.22-MSYS-1.0.11-1-bin.tar.gz
call ..\tools\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/diffutils-2.8.7-MSYS-1.0.11-1.tar.bz2
call ..\tools\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/findutils-4.3.0-MSYS-1.0.11-3-bin.tar.gz
call ..\tools\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/inetutils-1.3.2-40-MSYS-1.0.11-2-bin.tar.gz
call ..\tools\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/perl-5.6.1-MSYS-1.0.11-1.tar.bz2
call ..\tools\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/crypt-1.1-1-MSYS-1.0.11-1.tar.bz2
call ..\tools\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/libiconv-1.11-1-bin.tar.bz2
call ..\tools\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/libiconv-1.11-1-dll.tar.bz2
call ..\tools\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/flex-2.5.33-MSYS-1.0.11-1.tar.bz2
call ..\tools\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/bison-2.3-MSYS-1.0.11-1.tar.bz2
call ..\tools\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/texinfo-4.11-MSYS-1.0.11-1.tar.bz2
call ..\tools\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/automake1.10-1.10-1-bin.tar.bz2
call ..\tools\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/tar-1.13.19-MSYS-2005.06.08.tar.bz2  
call ..\tools\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/msysCORE-1.0.11-20080826.tar.gz
call ..\tools\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/autoconf2.1-2.13-3-bin.tar.bz2 
call ..\tools\get.bat http://ftp.gnome.org/pub/gnome/binaries/win32/dependencies/pkg-config-0.23-2.zip
call ..\tools\get.bat http://ftp.gnome.org/pub/gnome/binaries/win32/dependencies/gettext-runtime-0.17-1.zip
call ..\tools\get.bat http://ftp.gnome.org/pub/gnome/binaries/win32/glib/2.18/glib_2.18.2-1_win32.zip
call ..\tools\get.bat http://mercurial.berkwood.com/binaries/Mercurial-1.0.2.exe
call ..\tools\get.bat http://jaist.dl.sourceforge.net/sourceforge/nsis/nsis-2.22.zip
cls
echo  Mozbuildtools Version: %VERSION%
echo ________________________________________________________________________________
echo         請稍後...
..\tools\7za e -y ../download/*.bz2 > nul 2> nul
..\tools\7za e -y ../download/*.gz > nul 2> nul

cd ..
cls
echo  Mozbuildtools Version: %VERSION%
echo ________________________________________________________________________________
echo         正在安裝 NSIS...
move download\nsis-2.22.zip nsis-2.22.zip > nul 2> nul
tools\7za x nsis-2.22.zip > nul 2> nul
rename nsis-2.22 NSIS > nul 2> nul

echo         正在安裝 Mercurial...
tools\innounp.exe -x download\Mercurial-1.0.2.exe > nul 2> nul
rename {app} Mercurial > nul 2> nul
move install_script.iss Mercurial\install_script.iss > nul 2> nul


echo         正在安裝 msys...
mkdir msys  > nul 2> nul
cd msys
..\tools\7za x -y ../download/*.tar > nul 2> nul
..\tools\7za x -y ../download/*.zip > nul 2> nul


echo         拷貝工具檔案至 msys...
cd ..
xcopy /E /Y /Q msys\usr msys > nul 2> nul
copy tools\wget.exe msys\bin > nul 2> nul
copy tools\7za.exe msys\bin > nul 2> nul
copy tools\7z.exe msys\bin > nul 2> nul
copy tools\zip.exe msys\bin > nul 2> nul
copy tools\unzip.exe msys\bin > nul 2> nul
mkdir msys\etc\profile.d > nul 2> nul
xcopy /E /Y msys\usr\local msys > nul 2> nul

echo         第二階段安裝...
msys\bin\rxvt -e msys/bin/bash start-script/set_root.sh
msys\bin\rxvt -e msys/bin/bash start-script/setup.sh
move nsis-2.22.zip download\nsis-2.22.zip > nul 2> nul


echo         安裝 python26 ...
call install-python.bat

echo Y | del /S install-python.bat > nul 2> nul
rmdir /S /Q download > nul 2> nul
rmdir /S /Q msys\download > nul 2> nul
cle
echo  Mozbuildtools Version: %VERSION%
echo ________________________________________________________________________________
echo.
echo       安裝完成
echo.
echo             執行 start-msys.bat 開始執行 msys ，然後進行您的工作
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo ________________________________________________________________________________
pause
exit