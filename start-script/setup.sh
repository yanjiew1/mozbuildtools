#!/bin/bash
PATH=/bin
fail()
{
	echo "有一個步驟失敗了，若要重新啟動安裝，請執行 Setup.bat"
	rm -dr /etc/profile.d/setup.sh
}

echo ==========繼續第二階段安裝==========
rm -dr /download 2> nul
mkdir /download 2> nul
cd /download
echo 下載 GCC ...
echo '#!/bin/bash' > down.sh
echo 'wget http://nchc.dl.sourceforge.net/sourceforge/mingw/gcc-core-4.2.1-sjlj-2.tar.gz' >> down.sh
echo 'if [ "$?" != "0" ] ; then' >> down.sh
echo 'echo fail > fail' >> down.sh
echo 'fi' >> down.sh
rm fail 2> nul
rxvt -e ./down.sh
if [ $? != 0 ] ; then
	fail
	exit
fi
if [ -f fail ] ; then
	fail
	exit
fi
echo 下載 G++ ...
echo '#!/bin/bash' > down.sh
echo 'wget http://nchc.dl.sourceforge.net/sourceforge/mingw/gcc-g++-4.2.1-sjlj-2.tar.gz' >> down.sh
echo 'if [ "$?" != "0" ] ; then' >> down.sh
echo 'echo fail > fail' >> down.sh
echo 'fi' >> down.sh
rm fail 2> nul
rxvt -e ./down.sh
if [ $? != 0 ] ; then
	fail
	exit
fi
if [ -f fail ] ; then
	fail
	exit
fi
echo 下載 MinGW-Runtime ...
echo '#!/bin/bash' > down.sh
echo 'wget http://nchc.dl.sourceforge.net/sourceforge/mingw/mingwrt-3.15.1-mingw32-dev.tar.gz' >> down.sh
echo 'if [ "$?" != "0" ] ; then' >> down.sh
echo 'echo fail > fail' >> down.sh
echo 'fi' >> down.sh
echo 'wget http://nchc.dl.sourceforge.net/sourceforge/mingw/mingwrt-3.15.1-mingw32-dll.tar.gz' >> down.sh
echo 'if [ "$?" != "0" ] ; then' >> down.sh
echo 'echo fail > fail' >> down.sh
echo 'fi' >> down.sh
rm fail 2> nul
rxvt -e ./down.sh
if [ $? != 0 ] ; then
	fail
	exit
fi
if [ -f fail ] ; then
	fail
	exit
fi
echo 下載 w32api ...
echo '#!/bin/bash' > down.sh
echo 'wget http://nchc.dl.sourceforge.net/sourceforge/mingw/w32api-3.12-mingw32-dev.tar.gz' >> down.sh
echo 'if [ "$?" != "0" ] ; then' >> down.sh
echo 'echo fail > fail' >> down.sh
echo 'fi' >> down.sh
rm fail 2> nul
rxvt -e ./down.sh
if [ $? != 0 ] ; then
	fail
	exit
fi
if [ -f fail ] ; then
	fail
	exit
fi
echo 下載 binutils ...
echo '#!/bin/bash' > down.sh
echo 'wget http://nchc.dl.sourceforge.net/sourceforge/mingw/binutils-2.19-mingw32-rc1-bin.tar.gz' >> down.sh
echo 'if [ "$?" != "0" ] ; then' >> down.sh
echo 'echo fail > fail' >> down.sh
echo 'fi' >> down.sh
rm fail 2> nul
rxvt -e ./down.sh
if [ $? != 0 ] ; then
	fail
	exit
fi
if [ -f fail ] ; then
	fail
	exit
fi
echo 下載 Make ...
echo '#!/bin/bash' > down.sh
echo 'wget http://nchc.dl.sourceforge.net/sourceforge/mingw/mingw32-make-3.81-20080326-3.tar.gz' >> down.sh
echo 'if [ "$?" != "0" ] ; then' >> down.sh
echo 'echo fail > fail' >> down.sh
echo 'fi' >> down.sh
rm fail 2> nul
rxvt -e ./down.sh
if [ $? != 0 ] ; then
	fail
	exit
fi
if [ -f fail ] ; then
	fail
	exit
fi

cd /download
echo 解壓縮 ...

ROOTDIR=`cat /root`
mkdir $ROOTDIR/mingw 2> nul
cd $ROOTDIR/mingw
for E in `ls /download/*.tar.gz`
do
	tar -zxf $E
done
for E in `ls /download/*.zip`
do
	unzip -o $E > nul
done
for E in `ls /download/*.7z`
do
	7z x -y $E > nul
done
cd bin
cp gcc-sjlj.exe gcc.exe
cp g++-sjlj.exe g++.exe
cp cpp-sjlj.exe cpp.exe
cp c++-sjlj.exe c++.exe
cp mingw32-c++-sjlj.exe mingw32-c++.exe
cp mingw32-g++-sjlj.exe mingw32-g++.exe
cp mingw32-gcc-4.2.1-sjlj.exe mingw32-gcc-4.2.1.exe
cp mingw32-gcc-sjlj.exe mingw32-gcc.exe
echo 取得 buildtools ...
cd /download
cvs -d :pserver:anonymous@cvs-mirror.mozilla.org:/cvsroot co buildtools
mkdir $ROOTDIR/moztools
mkdir $ROOTDIR/moztools/bin
cp -r buildtools/windows/bin/x86/* $ROOTDIR/moztools/bin
mkdir $ROOTDIR/moztools/lib
cp -r buildtools/windows/lib/* $ROOTDIR/moztools/lib
mkdir $ROOTDIR/moztools/include
cp -r buildtools/windows/include/* $ROOTDIR/moztools/include
#echo '修正 MinGW bug...'
cd $ROOTDIR/mingw
#patch -p1 < ../patches/MinGW-patch.patch
cd lib
#rm -f libcrypt32.a
#rm -f libgdi32.a
#cp ../../w32api_fix/libcrypt32.a .
#cp ../../w32api_fix/libgdi32.a .

