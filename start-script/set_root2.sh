#!/bin/bash
PATH=/bin
echo `pwd` > msys/root
echo "@echo off" > start-msys.bat
echo "set ROOT=`pwd -W`" >> start-msys.bat
cat start-msys.bat.in >> start-msys.bat
tools/todos.exe start-msys.bat

