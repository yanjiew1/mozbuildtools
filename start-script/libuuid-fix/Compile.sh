#!/bin/bash
Obj=""
export C_INCLUDE_PATH=mingw/include
msys/bin/cp -r start-script/libuuid-fix/*.h mingw/include
for Source in `msys/bin/ls start-script/libuuid-fix/*.c`
do
 mingw/bin/gcc -O2 -c $Source -o $Source.o
 Obj="$Obj $Source.o"
done
mingw/bin/ar r mingw/lib/libuuid.a $Obj
mingw/bin/ranlib mingw/lib/libuuid.a
msys/bin/rm $Obj
