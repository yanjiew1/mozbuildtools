#!/bin/bash
for GR in `find`
do
	grep -n $1 $GR > ~/GREP 2> ~/null
	if [ "`cat ~/GREP`" != "" ] ; then
		echo $GR
		cat ~/GREP
	fi
done
