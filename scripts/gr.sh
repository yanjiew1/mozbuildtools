#!/bin/bash
for GR in $1
do
	grep -n $2 $GR > ~/GREP 2> ~/null
	if [ "`cat ~/GREP`" != "" ] ; then
		echo $GR
		cat ~/GREP
	fi
done