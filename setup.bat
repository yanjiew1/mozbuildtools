@echo off
set VERSION=1.1 RC
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
echo       �w��ϥ� Mozbuildtools �]�w�{���A�n���椧�e�A�Х��ˬd�H�U�]�w�G
echo.
echo             1. �����O�_���`�s�u
echo             2. ��Ƨ��O�_�i�H�g�J
echo.
echo.
echo       �p�G�H�W�]�w���S�����D�A�N�i�H�~��w�ˡC
echo       �`�N: �w�ˮɷ|�N�Ҧ��ɮײM��
echo.
echo       ���{�������v��ĳ�� BSD License �A�Ա��аѾ\ License.txt �C
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
echo         �R���w�g�s�b���ɮ�...
rmdir /S /Q download > nul 2> nul
rmdir /S /Q NSIS > nul 2> nul
rmdir /S /Q msys > nul 2> nul
rmdir /S /Q MinGW > nul 2> nul
rmdir /S /Q Mercurial > nul 2> nul
rmdir /S /Q moztools > nul 2> nul
rmdir /S /Q python25 > nul 2> nul
rmdir /S /Q buildtools > nul 2> nul
rmdir /S /Q {tmp} > nul 2> nul
del start-msys.bat > nul 2> nul
del start-cmd.bat > nul 2> nul
del start-msys-rxvt.bat > nul 2> nul
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

call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS bison/bison-2.4.1-1/bison-2.4.1-1-msys-1.0.11-bin.tar.lzma" bison-2.4.1-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS cvs/cvs-1.12.13-1/cvs-1.12.13-1-msys-1.0.11-bin.tar.lzma" cvs-1.12.13-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS Base System/Current Release_ MSYS-1.0.11/coreutils-5.97-MSYS-1.0.11-snapshot.tar.bz2" coreutils-5.97-MSYS-1.0.11-snapshot.tar.bz2
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS inetutils/inetutils-1.5-1/inetutils-1.5-1-msys-1.0.11-bin.tar.lzma" inetutils-1.5-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS perl/perl-5.6.1_2-1/perl-5.6.1_2-1-msys-1.0.11-bin.tar.lzma" perl-5.6.1_2-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS crypt/crypt-1.1_1-2/crypt-1.1_1-2-msys-1.0.11-bin.tar.lzma" crypt-1.1_1-2-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS crypt/crypt-1.1_1-2/libcrypt-1.1_1-2-msys-1.0.11-dll-0.tar.lzma" libcrypt-1.1_1-2-msys-1.0.11-dll-0.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS libiconv/libiconv-1.13.1-1/libiconv-1.13.1-1-msys-1.0.11-bin.tar.lzma" libiconv-1.13.1-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS flex/flex-2.5.35-1/flex-2.5.35-1-msys-1.0.11-bin.tar.lzma" flex-2.5.35-1-msys-1.0.11-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MinGW automake/automake1.11/automake-1.11-1.11-1/automake1.11-1.11-1-mingw32-bin.tar.lzma" automake1.11-1.11-1-mingw32-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS Base System/Current Release_ MSYS-1.0.11/msysCORE-1.0.11-bin.tar.gz" msysCORE-1.0.11-bin.tar.gz
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MinGW autoconf/autoconf2.1/autoconf2.1-2.13-4/autoconf2.1-2.13-4-mingw32-bin.tar.lzma"  autoconf2.1-2.13-4-mingw32-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MinGW libtool/libtool-2.2.7a-1/libtool-2.2.7a-1-mingw32-bin.tar.lzma" libtool-2.2.7a-1-mingw32-bin.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MinGW libtool/libtool-2.2.7a-1/libltdl-2.2.7a-1-mingw32-dll-7.tar.lzma" libltdl-2.2.7a-1-mingw32-dll-7.tar.lzma
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/GNU Make/Current Release_ mingw32-make-3.81-20080326/mingw32-make-3.81-20080326-3.tar.gz" mingw32-make-3.81-20080326-3.tar.gz
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/GNU Source-Level Debugger/Release Candidate_ GDB 6.8-3/gdb-6.8-mingw-3.tar.bz2" gdb-6.8-mingw-3.tar.bz2 
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/mingw/MSYS Base System/Current Release_ MSYS-1.0.11/make-3.81-MSYS-1.0.11-2.tar.bz2" make-3.81-MSYS-1.0.11-2.tar.bz2
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/gnuwin32/tar/1.13-1/tar-1.13-1-bin.zip" tar-1.13-1-bin.zip
call ..\start-script\get.bat "http://nchc.dl.sourceforge.net/project/gnuwin32/tar/1.13-1/tar-1.13-1-dep.zip" tar-1.13-1-dep.zip
call ..\start-script\get.bat http://ftp.gnome.org/pub/gnome/binaries/win32/dependencies/pkg-config_0.23-3_win32.zip pkg-config_0.23-3_win32.zip
call ..\start-script\get.bat http://ftp.gnome.org/pub/gnome/binaries/win32/dependencies/gettext-runtime-0.17-1.zip gettext-runtime-0.17-1.zip
call ..\start-script\get.bat http://ftp.gnome.org/pub/gnome/binaries/win32/glib/2.20/glib_2.20.4-1_win32.zip glib_2.20.4-1_win32.zip
call ..\start-script\get.bat http://mercurial.berkwood.com/binaries/Mercurial-1.3.1.exe Mercurial-1.3.1.exe
call ..\start-script\get.bat http://mozbuildtools.googlecode.com/files/nsisu-2.33.7z nsisu-2.33.7z
call ..\start-script\get.bat http://ftp.mozilla.org/pub/mozilla.org/mozilla/source/wintools.zip wintools.zip
call ..\start-script\get.bat http://mozbuildtools.googlecode.com/files/tools1.0.7z tools1.0.7z
call ..\start-script\get.bat http://mozbuildtools.googlecode.com/files/gcc-4.4.0-mingw-core-cxx-r2.7z gcc-4.4.0-mingw-core-cxx-r2.7z
call ..\start-script\get.bat http://mozbuildtools.googlecode.com/files/mingw-runtime-20090418.7z mingw-runtime-20090418.7z
call ..\start-script\get.bat http://mozbuildtools.googlecode.com/files/mingw-w32api-20090418.7z mingw-w32api-20090418.7z
call ..\start-script\get.bat http://mozbuildtools.googlecode.com/files/binutils-2.19.1-mingw.7z binutils-2.19.1-mingw.7z
call ..\start-script\get.bat http://mozbuildtools.googlecode.com/files/python2.5.4.7z python2.5.4.7z
set BINUTILS=binutils-2.19.1-mingw.7z
set GCC=gcc-4.4.0-mingw-core-cxx-r2.7z
set MINGWW32API=mingw-w32api-20090418.7z
set AUTOMAKE=automake1.11-1.11-1-mingw32-bin.tar
set AUTOCONF=autoconf2.1-2.13-4-mingw32-bin.tar
set LIBTOOL=libltdl-2.2.7a-1-mingw32-dll-7.tar
set LIBTOOL_BIN=libtool-2.2.7a-1-mingw32-bin.tar
set MINGWRUNTIME=mingw-runtime-20090418.7z
set GDB=gdb-6.8-mingw-3.tar
set MAKE=mingw32-make-3.81-20080326-3.tar


cls
echo  Mozbuildtools Version: %VERSION%
echo ________________________________________________________________________________
echo         �еy��...
..\tools\7za e -y ../download/*.bz2 > nul 2> nul
..\tools\7za e -y ../download/*.gz > nul 2> nul
..\tools\7za e -y ../download/*.lzma > nul 2> nul

cd ..
cls
echo  Mozbuildtools Version: %VERSION%
echo ________________________________________________________________________________

echo         ���b�]�w�u�㶰...
cd tools
7za.exe x -y ..\download\tools1.0.7z > nul 2> nul
cd ..

echo         ���b�]�w MinGW...
mkdir mingw > nul 2> nul
cd mingw
move ..\download\%BINUTILS% %BINUTILS% > nul 2> nul
move ..\download\%MINGWW32API% %MINGWW32API% > nul 2> nul
move ..\download\%MINGWRUNTIME% %MINGWRUNTIME% > nul 2> nul
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
copy ..\..\start-script\windows.h windows.h > nul 2> nul
cd ..
cd ..

echo         ���b�]�w Moztools...
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

echo         ���b�]�w NSIS...
move download\nsisu-2.33.7z nsisu-2.33.7z > nul 2> nul
mkdir NSIS
cd NSIS
..\tools\7za x ..\nsisu-2.33.7z > nul 2> nul
cd ..

echo         ���b�]�w Mercurial...
tools\innounp.exe -x download\Mercurial-1.3.1.exe > nul 2> nul
rename {app} Mercurial > nul 2> nul
move install_script.iss Mercurial\install_script.iss > nul 2> nul


echo         ���b�]�w msys...
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

echo         ���b�]�w python2.5.4 ...
mkdir python25
cd python25
..\tools\7za.exe x -y ..\download\python2.5.4.7z > nul 2> nul
cd ..

echo         ���b�ץ� libuuid.a ...
msys\bin\bash start-script/libuuid-fix/Compile.sh

echo         �R���̫᪺�Ȧs�� ...
move wintools.zip download\wintools.zip > nul 2> nul
move nsisu-2.33.7z download\nsisu-2.33.7z > nul 2> nul
cd mingw
move %BINUTILS% ..\download\%BINUTILS% > nul 2> nul
move %MINGWW32API% ..\download\%MINGWW32API% > nul 2> nul
move %MINGWRUNTIME% ..\download\%MINGWRUNTIME% > nul 2> nul
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
echo       �w�˧���
echo.
echo             ���� start-msys.bat �}�l���� msys �A�M��i��z���u�@�C
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
