#!/bin/bash
PATH=/bin
echo `pwd` > msys/root
echo "@echo off" > start-msys.bat
echo "set ROOT=\"`pwd -W`\"" >> start-msys.bat
cat start-msys.bat.in >> start-msys.bat
pwd -W | sed -n 's/\//\\/gp' > /winpwd
echo 'msiexec /a download\\python-2.6.msi /qb TARGETDIR="'`cat /winpwd`\\python26'"' > install-python.bat
