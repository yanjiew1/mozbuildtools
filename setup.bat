@echo off
set VERSION=0.3b3
rem Copyright (c) 2008 ~ 2009, Jay Wang
rem All rights reserved.
rem 
rem Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

rem     * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
rem     * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
rem     * Neither the name of the <ORGANIZATION> nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

rem THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

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
echo       本程式的授權協議為 BSD License ，詳情請參閱 License.txt 。
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
rmdir /S /Q python25 > nul 2> nul
rmdir /S /Q buildtools > nul 2> nul
del start-msys.bat > nul 2> nul
del install-python.bat > nul 2> nul
del tools\fromdos.exe > nul 2> nul
del tools\innounp.exe > nul 2> nul
del tools\todos.exe > nul 2> nul
del tools\unzip.exe > nul 2> nul
del tools\upx.exe > nul 2> nul
del tools\xdelta.exe > nul 2> nul
del tools\zip.exe > nul 2> nul
mkdir download > nul 2> nul

cd download

call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/bash-3.1-MSYS-1.0.11-1.tar.bz2 bash-3.1-MSYS-1.0.11-1.tar.bz2
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/bison-2.3-MSYS-1.0.11-1.tar.bz2 bison-2.3-MSYS-1.0.11-1.tar.bz2
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/cvs-1.11.22-MSYS-1.0.11-1-bin.tar.gz cvs-1.11.22-MSYS-1.0.11-1-bin.tar.gz
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/diffutils-2.8.7-MSYS-1.0.11-1.tar.bz2 diffutils-2.8.7-MSYS-1.0.11-1.tar.bz2
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/findutils-4.3.0-MSYS-1.0.11-3-bin.tar.gz findutils-4.3.0-MSYS-1.0.11-3-bin.tar.gz
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/inetutils-1.3.2-40-MSYS-1.0.11-2-bin.tar.gz inetutils-1.3.2-40-MSYS-1.0.11-2-bin.tar.gz
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/perl-5.6.1-MSYS-1.0.11-1.tar.bz2 perl-5.6.1-MSYS-1.0.11-1.tar.bz2
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/crypt-1.1-1-MSYS-1.0.11-1.tar.bz2 crypt-1.1-1-MSYS-1.0.11-1.tar.bz2
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/libiconv-1.11-1-bin.tar.bz2 libiconv-1.11-1-bin.tar.bz2
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/libiconv-1.11-1-dll.tar.bz2 libiconv-1.11-1-dll.tar.bz2
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/flex-2.5.33-MSYS-1.0.11-1.tar.bz2 flex-2.5.33-MSYS-1.0.11-1.tar.bz2
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/bison-2.3-MSYS-1.0.11-1.tar.bz2 bison-2.3-MSYS-1.0.11-1.tar.bz2
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/texinfo-4.11-MSYS-1.0.11-1.tar.bz2 texinfo-4.11-MSYS-1.0.11-1.tar.bz2
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/automake1.10-1.10-1-bin.tar.bz2 automake1.10-1.10-1-bin.tar.bz2
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/tar-1.13.19-MSYS-2005.06.08.tar.bz2 tar-1.13.19-MSYS-2005.06.08.tar.bz2   
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/msysCORE-1.0.11-20080826.tar.gz msysCORE-1.0.11-20080826.tar.gz
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/autoconf2.1-2.13-3-bin.tar.bz2  autoconf2.1-2.13-3-bin.tar.bz2 
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/libtool1.5-1.5.25a-1-bin.tar.bz2 libtool1.5-1.5.25a-1-bin.tar.bz2
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/libtool1.5-1.5.25a-1-dll.tar.bz2 libtool1.5-1.5.25a-1-bin.tar.bz2
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/regex-0.12-MSYS-1.0.11-1.tar.bz2 regex-0.12-MSYS-1.0.11-1.tar.bz2
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/gcc-core-4.2.1-sjlj-2.tar.gz gcc-core-4.2.1-sjlj-2.tar.gz
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/mingwrt-3.15.1-mingw32-dev.tar.gz mingwrt-3.15.1-mingw32-dev.tar.gz
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/gcc-g++-4.2.1-sjlj-2.tar.gz gcc-g++-4.2.1-sjlj-2.tar.gz
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/w32api-3.13-mingw32-dev.tar.gz w32api-3.13-mingw32-dev.tar.gz
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/mingw/binutils-2.19-mingw32-bin.tar.gz binutils-2.19-mingw32-bin.tar.gz
call ..\start-script\get.bat http://ftp.gnome.org/pub/gnome/binaries/win32/dependencies/pkg-config-0.23-2.zip pkg-config-0.23-2.zip
call ..\start-script\get.bat http://ftp.gnome.org/pub/gnome/binaries/win32/dependencies/gettext-runtime-0.17-1.zip gettext-runtime-0.17-1.zip
call ..\start-script\get.bat http://ftp.gnome.org/pub/gnome/binaries/win32/glib/2.18/glib_2.18.2-1_win32.zip glib_2.18.2-1_win32.zip
call ..\start-script\get.bat http://mercurial.berkwood.com/binaries/Mercurial-1.0.2.exe Mercurial-1.0.2.exe
call ..\start-script\get.bat http://nchc.dl.sourceforge.net/sourceforge/nsis/nsis-2.22.zip nsis-2.22.zip
call ..\start-script\get.bat http://mozbuildtools.googlecode.com/files/python2.5.4.7z python2.5.4.7z
call ..\start-script\get.bat http://ftp.mozilla.org/pub/mozilla.org/mozilla/source/wintools.zip wintools.zip
call ..\start-script\get.bat http://mozbuildtools.googlecode.com/files/tools1.0.7z tools1.0.7z

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

echo         正在設定工具集...
cd tools
7za.exe x -y ..\download\tools1.0.7z > nul 2> nul
cd ..

echo         正在設定 MinGW...
mkdir mingw > nul 2> nul
cd mingw
move ..\download\binutils-2.19-bin.tar binutils-2.19-mingw32-bin.tar > nul 2> nul
move ..\download\w32api-3.13-mingw32-dev.tar w32api-3.13-mingw32-dev.tar > nul 2> nul
move ..\download\mingwrt-3.15.1-mingw32-dev.tar mingwrt-3.15.1-mingw32-dev.tar > nul 2> nul
move ..\download\gcc-g++-4.2.1-sjlj-2.tar gcc-g++-4.2.1-sjlj-2.tar > nul 2> nul
move ..\download\gcc-core-4.2.1-sjlj-2.tar gcc-core-4.2.1-sjlj-2.tar > nul 2> nul

..\tools\7za x -y *.tar > nul 2> nul
cd bin
move gcc-sjlj.exe gcc.exe > nul 2> nul
move g++-sjlj.exe g++.exe > nul 2> nul
move cpp-sjlj.exe cpp.exe > nul 2> nul 
move c++-sjlj.exe c++.exe > nul 2> nul
move mingw32-c++-sjlj.exe mingw32-c++.exe > nul 2> nul
move mingw32-g++-sjlj.exe mingw32-g++.exe > nul 2> nul
move mingw32-gcc-4.2.1-sjlj.exe mingw32-gcc-4.2.1.exe > nul 2> nul
move mingw32-gcc-sjlj.exe mingw32-gcc.exe > nul 2> nul
cd ..
cd ..

echo         正在設定 Moztools...
move download\wintools.zip wintools.zip > nul 2> nul
tools\7za x wintools.zip > nul 2> nul
mkdir moztools > nul 2> nul
cd moztools
mkdir bin > nul 2> nul
copy ..\buildtools\windows\bin\x86\*.dll bin > nul 2> nul
copy ..\buildtools\windows\bin\x86\*.exe bin > nul 2> nul
mkdir include > nul 2> nul
copy ..\buildtools\windows\include\*.h include > nul 2> nul
..\tools\fromdos.exe include\*.h > nul 2> nul
cd include
mkdir libIDL > nul 2> nul
copy ..\..\buildtools\windows\include\libIDL\*.h libIDL > nul 2> nul
..\..\tools\fromdos.exe libIDL\*.h > nul 2> nul
cd ..
mkdir lib > nul 2> nul
copy ..\buildtools\windows\lib\*.lib lib > nul 2> nul
cd ..
move moztools\bin\nsinstall.exe moztools\bin\nsinstall.exe.orig > nul 2> nul
tools\xdelta -d -s moztools\bin\nsinstall.exe.orig start-script\nsinstall.xdelta moztools\bin\nsinstall.exe > nul 2> nul
del moztools\bin\nsinstall.exe.orig > nul 2> nul

echo         正在設定 NSIS...
move download\nsis-2.22.zip nsis-2.22.zip > nul 2> nul
tools\7za x nsis-2.22.zip > nul 2> nul
rename nsis-2.22 NSIS > nul 2> nul

echo         正在設定 Mercurial...
tools\innounp.exe -x download\Mercurial-1.0.2.exe > nul 2> nul
rename {app} Mercurial > nul 2> nul
move install_script.iss Mercurial\install_script.iss > nul 2> nul


echo         正在設定 msys...
mkdir msys  > nul 2> nul
cd msys
..\tools\7za x -y ../download/*.tar > nul 2> nul
..\tools\7za x -y ../download/*.zip > nul 2> nul
cd ..
xcopy /E /Y /Q msys\usr msys > nul 2> nul
copy tools\wget.exe msys\bin > nul 2> nul
copy tools\7za.exe msys\bin > nul 2> nul
copy tools\7za.exe msys\bin\7z.exe > nul 2> nul
copy tools\zip.exe msys\bin > nul 2> nul
copy tools\unzip.exe msys\bin > nul 2> nul
mkdir msys\etc\profile.d > nul 2> nul
xcopy /E /Y msys\usr\local msys > nul 2> nul
msys\bin\bash start-script/set_root2.sh
cd mingw
move binutils-2.19-bin.tar ..\download\binutils-2.19-mingw32-rc1-bin.tar > nul 2> nul
move w32api-3.12-mingw32-dev.tar ..\download\w32api-3.12-mingw32-dev.tar > nul 2> nul
move mingwrt-3.15.1-mingw32-dev.tar ..\download\mingwrt-3.15.1-mingw32-dev.tar > nul 2> nul
move gcc-g++-4.2.1-sjlj-2.tar ..\download\gcc-g++-4.2.1-sjlj-2.tar > nul 2> nul
move gcc-core-4.2.1-sjlj-2.tar ..\download\gcc-core-4.2.1-sjlj-2.tar > nul 2> nul
cd ..

move nsis-2.22.zip download\nsis-2.22.zip > nul 2> nul

echo         正在設定 python2.5.4 ...
mkdir python25
cd python25
..\tools\7za.exe x -y ..\download\python2.5.4.7z > nul 2> nul
cd ..

move wintools.zip download\wintools.zip > nul 2> nul

echo         刪除最後的暫存檔 ...
rmdir /S /Q download > nul 2> nul
rmdir /S /Q buildtools > nul 2> nul


cls
echo  Mozbuildtools Version: %VERSION%
echo ________________________________________________________________________________
echo.
echo       安裝完成
echo.
echo             執行 start-msys.bat 開始執行 msys ，然後進行您的工作。
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
