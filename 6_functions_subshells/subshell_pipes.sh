#!/bin/bash
C=0 # initialise counter
find -type f | while read line; do
	# subshell here!
	((C++))
done
#not in subshell any more:
echo "We found $C files"
