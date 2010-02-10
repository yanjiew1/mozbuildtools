#!/bin/bash
Obj=""
msys/bin/cp -r start-script/libuuid-fix/*.h mingw/include/w32api
for Source in `msys/bin/ls start-script/libuuid-fix/*.c`
do
 mingw/bin/gcc -O2 -Imingw/include/w32api -c $Source -o $Source.o
 Obj="$Obj $Source.o"
done
mingw/bin/ar r mingw/lib/w32api/libuuid.a $Obj
mingw/bin/ranlib mingw/lib/w32api/libuuid.a
msys/bin/rm $Obj
