#!/bin/bash
#Copyright (c) 2008, Jay Wang
#All rights reserved.
#
#Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
#
#    * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
#    * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
#    * Neither the name of the <ORGANIZATION> nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
PATH=/bin
echo `pwd` > msys/root
echo "@echo off" > start-msys.bat
echo "set ROOT=`pwd -W`" >> start-msys.bat
cat start-msys.bat.in >> start-msys.bat
tools/todos.exe start-msys.bat
echo "@echo off" > start-msys-rxvt.bat
echo "set ROOT=`pwd -W`" >> start-msys-rxvt.bat
cat start-msys-rxvt.bat.in >> start-msys-rxvt.bat
tools/todos.exe start-msys-rxvt.bat
echo "@echo off" > start-cmd.bat
echo "set ROOT=`pwd -W`" >> start-cmd.bat
cat start-cmd.bat.in >> start-cmd.bat
tools/todos.exe start-cmd.bat

