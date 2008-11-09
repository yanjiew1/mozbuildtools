#!/bin/bash
cp `cat /root`/NSPR/bin/*.dll dist/bin/ > /dev/null 2> /dev/null
cp `cat /root`/moztools/bin/*.dll dist/bin/ > /dev/null 2> /dev/null
make installer > /dev/null 2> /dev/null
mkdir `cat /root`/installer > /dev/null 2> /dev/null
cp dist/install/sea/*.exe `cat /root`/installer > /dev/null 2> /dev/null
