#!/bin/bash
C=0
[() {	# overwrite the [ builtin
	
	# Increase and print a counter
	((C++))
	echo $C

	# this gives an infinite loop:
	if [ $C -gt 100 ] ; then
		echo "never printed"
		exit 1
	fi
}

if [ "$VAR" ]; then
	echo "VAR is not empty"	 #never reached
fi
