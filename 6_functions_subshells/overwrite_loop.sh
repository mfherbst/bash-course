#!/bin/bash

C=0 # count to break at some point

[() {	# overwrite the [ builtin
		
	# use test to end at some point
	if test $((C++)) -gt 100; then
		echo "$C"
		exit 0
	fi

	# this gives an infinite loop:
	if [ $C -gt 100 ] ; then
		echo "never printed"
		exit 1
	fi
}

if [ "$VAR" ]; then
	echo "VAR is not empty"	 #never reached
fi
