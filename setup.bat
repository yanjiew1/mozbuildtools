@echo off
set VERSION=1.2
rem Copyright (c) 2008 ~ 2010, Jay Wang
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
rmdir /S /Q {tmp} > nul 2> nul
rmdir /S /Q libs > nul 2> nul
del start-msys.bat > nul 2> nul
del start-cmd.bat > nul 2> nul
del start-msys-rxvt.bat > nul 2> nul
del install-python.bat > nul 2> nul
del tools\innounp.exe > nul 2> nul
del tools\unzip.exe > nul 2> nul
del tools\upx.exe > nul 2> nul
del tools\xdelta.exe > nul 2> nul
del tools\zip.exe > nul 2> nul
mkdir download > nul 2> nul

cd download

call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS texinfo/texinfo-4.13a-1/texinfo-4.13a-1-msys-1.0.11-bin.tar.lzma" texinfo-4.13a-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS automake/automake-1.11-1/automake-1.11-1-msys-1.0.11-bin.tar.lzma" automake-1.11-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS autoconf/autoconf-2.63-1/autoconf-2.63-1-msys-1.0.11-bin.tar.lzma" autoconf-2.63-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS inetutils/inetutils-1.5-1/inetutils-1.5-1-msys-1.0.11-bin.tar.lzma" inetutils-1.5-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS less/less-436-1/less-436-1-msys-1.0.11-bin.tar.lzma" less-436-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS vim/vim-7.2-1/vim-7.2-1-msys-1.0.11-bin.tar.lzma" vim-7.2-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS tar/tar-1.22-1/tar-1.22-1-msys-1.0.11-bin.tar.lzma" tar-1.22-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS xz/xz-4.999.9beta_20091209-1/liblzma-4.999.9beta_20091209-1-msys-1.0.12-dll-1.tar.gz" liblzma-4.999.9beta_20091209-1-msys-1.0.12-dll-1.tar.gz
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS xz/xz-4.999.9beta_20091209-1/xz-4.999.9beta_20091209-1-msys-1.0.12-bin.tar.gz" xz-4.999.9beta_20091209-1-msys-1.0.12-bin.tar.gz
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS zlib/zlib-1.2.3-1/zlib-1.2.3-1-msys-1.0.11-dll.tar.gz" zlib-1.2.3-1-msys-1.0.11-dll.tar.gz
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS regex/regex-1.20090805-1/libregex-1.20090805-1-msys-1.0.11-dll-1.tar.lzma" libregex-1.20090805-1-msys-1.0.11-dll-1.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS findutils/findutils-4.4.2-1/findutils-4.4.2-1-msys-1.0.11-bin.tar.lzma" findutils-4.4.2-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS findutils/findutils-4.4.2-1/locate-4.4.2-1-msys-1.0.11-bin.tar.lzma" locate-4.4.2-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS gawk/gawk-3.1.7-1/gawk-3.1.7-1-msys-1.0.11-bin.tar.lzma" gawk-3.1.7-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS file/file-5.03-1/file-5.03-1-msys-1.0.11-bin.tar.lzma" file-5.03-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS file/file-5.03-1/libmagic-5.03-1-msys-1.0.11-dll-1.tar.lzma" libmagic-5.03-1-msys-1.0.11-dll-1.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS sed/sed-4.2.1-1/sed-4.2.1-1-msys-1.0.11-bin.tar.lzma" sed-4.2.1-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS grep/grep-2.5.4-1/grep-2.5.4-1-msys-1.0.11-bin.tar.lzma" grep-2.5.4-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS m4/m4-1.4.13-1/m4-1.4.13-1-msys-1.0.11-bin.tar.lzma" m4-1.4.13-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS diffutils/diffutils-2.8.7.20071206cvs-2/diffutils-2.8.7.20071206cvs-2-msys-1.0.11-bin.tar.lzma" diffutils-2.8.7.20071206cvs-2-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS patch/patch-2.5.9-1/patch-2.5.9-1-msys-1.0.11-bin.tar.lzma" patch-2.5.9-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS gzip/gzip-1.3.12-1/gzip-1.3.12-1-msys-1.0.11-bin.tar.lzma" gzip-1.3.12-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS bzip2/bzip2-1.0.5-1/bzip2-1.0.5-1-msys-1.0.11-bin.tar.gz" bzip2-1.0.5-1-msys-1.0.11-bin.tar.gz
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS bzip2/bzip2-1.0.5-1/libbz2-1.0.5-1-msys-1.0.11-dll-1.tar.gz" libbz2-1.0.5-1-msys-1.0.11-dll-1.tar.gz
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS rxvt/rxvt-2.7.10.20050409-1/rxvt-2.7.10.20050409-1-msys-1.0.11-bin.tar.lzma" rxvt-2.7.10.20050409-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS bison/bison-2.4.1-1/bison-2.4.1-1-msys-1.0.11-bin.tar.lzma" bison-2.4.1-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS cvs/cvs-1.12.13-1/cvs-1.12.13-1-msys-1.0.11-bin.tar.lzma" cvs-1.12.13-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS coreutils/coreutils-5.97-2/coreutils-5.97-2-msys-1.0.11-bin.tar.lzma" coreutils-5.97-2-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS inetutils/inetutils-1.5-1/inetutils-1.5-1-msys-1.0.11-bin.tar.lzma" inetutils-1.5-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS perl/perl-5.6.1_2-1/perl-5.6.1_2-1-msys-1.0.11-bin.tar.lzma" perl-5.6.1_2-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS crypt/crypt-1.1_1-2/crypt-1.1_1-2-msys-1.0.11-bin.tar.lzma" crypt-1.1_1-2-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS crypt/crypt-1.1_1-2/libcrypt-1.1_1-2-msys-1.0.11-dll-0.tar.lzma" libcrypt-1.1_1-2-msys-1.0.11-dll-0.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS libiconv/libiconv-1.13.1-1/libiconv-1.13.1-1-msys-1.0.11-bin.tar.lzma" libiconv-1.13.1-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS flex/flex-2.5.35-1/flex-2.5.35-1-msys-1.0.11-bin.tar.lzma" flex-2.5.35-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MinGW automake/automake1.11/automake1.11-1.11-1/automake1.11-1.11-1-mingw32-bin.tar.lzma" automake1.11-1.11-1-mingw32-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS Base System/msys-1.0.12/msysCORE-1.0.12-1-msys-1.0.12-bin.tar.lzma" msysCORE-1.0.12-1-msys-1.0.12-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MinGW autoconf/autoconf2.1/autoconf2.1-2.13-4/autoconf2.1-2.13-4-mingw32-bin.tar.lzma"  autoconf2.1-2.13-4-mingw32-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MinGW libtool/libtool-2.2.7a-1/libtool-2.2.7a-1-mingw32-bin.tar.lzma" libtool-2.2.7a-1-mingw32-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MinGW libtool/libtool-2.2.7a-1/libltdl-2.2.7a-1-mingw32-dll-7.tar.lzma" libltdl-2.2.7a-1-mingw32-dll-7.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MinGW Runtime/mingwrt-3.17/mingwrt-3.17-mingw32-dll.tar.gz" mingwrt-3.17-mingw32-dll.tar.gz
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MinGW Runtime/mingwrt-3.17/mingwrt-3.17-mingw32-dev.tar.gz" mingwrt-3.17-mingw32-dev.tar.gz
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS bash/bash-3.1.17-2/bash-3.1.17-2-msys-1.0.11-bin.tar.lzma" bash-3.1.17-2-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/GNU Binutils/binutils-2.20/binutils-2.20-1-mingw32-bin.tar.gz" binutils-2.20-1-mingw32-bin.tar.gz
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS w32api/w32api-3.14-3/w32api-3.14-3-msys-1.0.12-dev.tar.lzma" w32api-3.14-3-msys-1.0.12-dev.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MinGW Runtime/mingwrt-3.17/mingwrt-3.17-mingw32-dll.tar.gz" mingwrt-3.17-mingw32-dev.tar.gz
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MinGW libtool/libtool-2.2.7a-1/libltdl-2.2.7a-1-mingw32-dll-7.tar.lzma" libltdl-2.2.7a-1-mingw32-dll-7.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MinGW make/make-3.81-20090914-mingw32/make-3.81-20090914-mingw32-bin.tar.gz" make-3.81-20090914-mingw32-bin.tar.gz
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/GNU Source-Level Debugger/GDB-7.0.50.20100202/gdb-7.0.50.20100202-mingw32-bin.tar.gz" gdb-7.0.50.20100202-mingw32-bin.tar.gz
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS make/make-3.81-2/make-3.81-2-msys-1.0.11-bin.tar.lzma" make-3.81-2-msys-1.0.11-bin.tar.lzma
rem call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/gnuwin32/tar/1.13-1/tar-1.13-1-bin.zip" tar-1.13-1-bin.zip
rem call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/gnuwin32/tar/1.13-1/tar-1.13-1-dep.zip" tar-1.13-1-dep.zip
call ..\start-script\get.bat http://bitbucket.org/tortoisehg/thg-winbuild/downloads/mercurial-1.4.3.exe mercurial-1.4.3.exe
call ..\start-script\get.bat http://mozbuildtools.googlecode.com/files/nsisu-2.33.7z nsisu-2.33.7z
call ..\start-script\get.bat http://mozbuildtools.googlecode.com/files/tools1.1.7z tools1.1.7z
call ..\start-script\get.bat http://mozbuildtools.googlecode.com/files/gcc-4.4.3-core-cxx-mingw.7z gcc-4.4.3-core-cxx-mingw.7z
call ..\start-script\get.bat http://mozbuildtools.googlecode.com/files/python2.5.4.7z python2.5.4.7z
call ..\start-script\get.bat http://mozbuildtools.googlecode.com/files/libs-v1.7z libs-v1.7z

set BINUTILS=binutils-2.20-1-mingw32-bin.tar
set GCC=gcc-4.4.3-core-cxx-mingw.7z
set MINGWW32API=w32api-3.14-3-msys-1.0.12-dev.tar
set AUTOMAKE=automake1.11-1.11-1-mingw32-bin.tar
set AUTOCONF=autoconf2.1-2.13-4-mingw32-bin.tar
set LIBTOOL=libltdl-2.2.7a-1-mingw32-dll-7.tar
set LIBTOOL_BIN=libtool-2.2.7a-1-mingw32-bin.tar
set MINGWRUNTIME_DLL=mingwrt-3.17-mingw32-dll.tar
set MINGWRUNTIME_DEV=mingwrt-3.17-mingw32-dev.tar
set GDB=gdb-7.0.50.20100202-mingw32-bin.tar
set MAKE=make-3.81-20090914-mingw32-bin.tar


cls
echo  Mozbuildtools Version: %VERSION%
echo ________________________________________________________________________________
echo         請稍後...
..\tools\7za e -y ../download/*.bz2 > nul 2> nul
..\tools\7za e -y ../download/*.gz > nul 2> nul
..\tools\7za e -y ../download/*.lzma > nul 2> nul

cd ..
cls
echo  Mozbuildtools Version: %VERSION%
echo ________________________________________________________________________________

echo         正在設定工具集...
cd tools
7za.exe x -y ..\download\tools1.1.7z > nul 2> nul
cd ..

echo         正在設定 MinGW...
mkdir mingw > nul 2> nul
cd mingw
move ..\download\%BINUTILS% %BINUTILS% > nul 2> nul
move ..\download\%MINGWW32API% %MINGWW32API% > nul 2> nul
move ..\download\%MINGWRUNTIME_DLL% %MINGWRUNTIME_DLL% > nul 2> nul
move ..\download\%MINGWRUNTIME_DEV% %MINGWRUNTIME_DEV% > nul 2> nul
move ..\download\%GCC% %GCC% > nul 2> nul
move ..\download\%MAKE% %MAKE% > nul 2> nul
move ..\download\%GDB% %GDB% > nul 2> nul
move ..\download\%AUTOMAKE% %AUTOMAKE% > nul 2> nul
move ..\download\%AUTOCONF% %AUTOCONF% > nul 2> nul
move ..\download\%LIBTOOL% %LIBTOOL% > nul 2> nul
move ..\download\%LIBTOOL_BIN% %LIBTOOL_BIN% > nul 2> nul

..\tools\7za x -y *.tar > nul 2> nul
..\tools\7za x -y *.7z > nul 2> nul
cd bin
cd ..
cd include
cd w32api
copy ..\..\..\start-script\windows.h windows.h > nul 2> nul
copy ..\..\..\start-script\windef.h windef.h > nul 2> nul
cd ..
cd ..
cd ..

echo         正在設定所需的函式庫...
mkdir libs
cd libs
..\tools\7za.exe x -y ..\download\libs-v1.7z > nul 2> nul
cd ..

rem echo         正在設定 Moztools...
rem move download\wintools.zip wintools.zip > nul 2> nul
rem tools\7za x wintools.zip > nul 2> nul
rem mkdir moztools > nul 2> nul
rem cd moztools
rem mkdir bin > nul 2> nul
rem copy ..\buildtools\windows\bin\x86\*.dll bin > nul 2> nul
rem copy ..\buildtools\windows\bin\x86\*.exe bin > nul 2> nul
rem mkdir include > nul 2> nul
rem copy ..\buildtools\windows\include\*.h include > nul 2> nul
rem ..\tools\fromdos.exe include\*.h > nul 2> nul
rem cd include
rem mkdir libIDL > nul 2> nul
rem copy ..\..\buildtools\windows\include\libIDL\*.h libIDL > nul 2> nul
rem ..\..\tools\fromdos.exe libIDL\*.h > nul 2> nul
rem cd ..
rem mkdir lib > nul 2> nul
rem copy ..\buildtools\windows\lib\*.lib lib > nul 2> nul
rem cd ..
rem move moztools\bin\nsinstall.exe moztools\bin\nsinstall.exe.orig > nul 2> nul
rem tools\xdelta -d -s moztools\bin\nsinstall.exe.orig start-script\nsinstall.xdelta moztools\bin\nsinstall.exe > nul 2> nul
rem del moztools\bin\nsinstall.exe.orig > nul 2> nul

echo         正在設定 NSIS...
move download\nsisu-2.33.7z nsisu-2.33.7z > nul 2> nul
mkdir NSIS
cd NSIS
..\tools\7za x ..\nsisu-2.33.7z > nul 2> nul
cd ..

echo         正在設定 Mercurial...
tools\innounp.exe -x download\mercurial-1.4.3.exe > nul 2> nul
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

echo         正在設定 python2.5.4 ...
mkdir python25
cd python25
..\tools\7za.exe x -y ..\download\python2.5.4.7z > nul 2> nul
cd ..

echo         正在修正 libuuid.a ...
msys\bin\bash start-script/libuuid-fix/Compile.sh

echo         刪除最後的暫存檔 ...
move wintools.zip download\wintools.zip > nul 2> nul
move nsisu-2.33.7z download\nsisu-2.33.7z > nul 2> nul
cd mingw
move %BINUTILS% ..\download\%BINUTILS% > nul 2> nul
move %MINGWW32API% ..\download\%MINGWW32API% > nul 2> nul
move %MINGWRUNTIME_DLL% ..\download\%MINGWRUNTIME_DLL% > nul 2> nul
move %MINGWRUNTIME_DEV% ..\download\%MINGWRUNTIME_DEV% > nul 2> nul
move %GCC% ..\download\%GCC% > nul 2> nul
move %MAKE% ..\download\%MAKE% > nul 2> nul
move %GDB% ..\download\%GDB% > nul 2> nul
move %AUTOMAKE% ..\download\%AUTOMAKE% > nul 2> nul
move %AUTOCONF% ..\download\%AUTOCONF% > nul 2> nul
move %LIBTOOL% ..\download\%LIBTOOL% > nul 2> nul
move %LIBTOOL_BIN% ..\download\%LIBTOOL_BIN% > nul 2> nul
cd ..
rmdir /S /Q download > nul 2> nul
rmdir /S /Q buildtools > nul 2> nul
rmdir /S /Q {tmp} > nul 2> nul


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
