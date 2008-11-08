@echo off
echo ==========第一階段安裝==========
echo 準備開始安裝
pause
echo del /Q /S download
mkdir download 2> nul
echo Y | echo del /S download > nul
mkdir download 2> nul
tools\wget -c http://www.python.org/ftp/python/2.6/python-2.6.msi
cd download
..\tools\wget -c http://nchc.dl.sourceforge.net/sourceforge/mingw/bash-3.1-MSYS-1.0.11-1.tar.bz2
..\tools\wget -c http://nchc.dl.sourceforge.net/sourceforge/mingw/bison-2.3-MSYS-1.0.11-1.tar.bz2
..\tools\wget -c http://nchc.dl.sourceforge.net/sourceforge/mingw/cvs-1.11.22-MSYS-1.0.11-1-bin.tar.gz
..\tools\wget -c http://nchc.dl.sourceforge.net/sourceforge/mingw/diffutils-2.8.7-MSYS-1.0.11-1.tar.bz2
..\tools\wget -c http://nchc.dl.sourceforge.net/sourceforge/mingw/findutils-4.3.0-MSYS-1.0.11-3-bin.tar.gz
..\tools\wget -c http://nchc.dl.sourceforge.net/sourceforge/mingw/inetutils-1.3.2-40-MSYS-1.0.11-2-bin.tar.gz
..\tools\wget -c http://nchc.dl.sourceforge.net/sourceforge/mingw/perl-5.6.1-MSYS-1.0.11-1.tar.bz2
..\tools\wget -c http://nchc.dl.sourceforge.net/sourceforge/mingw/crypt-1.1-1-MSYS-1.0.11-1.tar.bz2
..\tools\wget -c http://nchc.dl.sourceforge.net/sourceforge/mingw/libiconv-1.11-1-bin.tar.bz2
..\tools\wget -c http://nchc.dl.sourceforge.net/sourceforge/mingw/libiconv-1.11-1-dll.tar.bz2
..\tools\wget -c http://nchc.dl.sourceforge.net/sourceforge/mingw/flex-2.5.33-MSYS-1.0.11-1.tar.bz2
..\tools\wget -c http://nchc.dl.sourceforge.net/sourceforge/mingw/bison-2.3-MSYS-1.0.11-1.tar.bz2
..\tools\wget -c http://nchc.dl.sourceforge.net/sourceforge/mingw/texinfo-4.11-MSYS-1.0.11-1.tar.bz2
..\tools\wget -c http://nchc.dl.sourceforge.net/sourceforge/mingw/automake1.10-1.10-1-bin.tar.bz2
..\tools\wget -c http://nchc.dl.sourceforge.net/sourceforge/mingw/tar-1.13.19-MSYS-2005.06.08.tar.bz2  
..\tools\wget -c http://nchc.dl.sourceforge.net/sourceforge/mingw/msysCORE-1.0.11-20080826.tar.gz
..\tools\wget -c http://nchc.dl.sourceforge.net/sourceforge/mingw/autoconf2.1-2.13-3-bin.tar.bz2 
..\tools\wget -c http://ftp.gnome.org/pub/gnome/binaries/win32/dependencies/pkg-config-0.23-2.zip
..\tools\wget -c http://ftp.gnome.org/pub/gnome/binaries/win32/dependencies/gettext-runtime-0.17-1.zip
..\tools\wget -c http://ftp.gnome.org/pub/gnome/binaries/win32/glib/2.18/glib_2.18.2-1_win32.zip
..\tools\7za e ../download/*.bz2
..\tools\7za e ../download/*.gz
cd ..

mkdir msys 2> nul
cd msys
..\tools\7za x -y ../download/*.tar
..\tools\7za x -y ../download/*.zip

cd ..
xcopy /E /Y /Q msys\usr msys
copy tools\wget.exe msys\bin
copy tools\7za.exe msys\bin
copy tools\zip.exe msys\bin
copy tools\unzip.exe msys\bin
mkdir msys\etc\profile.d
xcopy /E /Y msys\usr\local msys

msys\bin\rxvt -e msys/bin/bash start-script/set_root.sh
msys\bin\rxvt -e msys/bin/bash start-script/setup.sh