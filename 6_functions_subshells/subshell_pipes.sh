#!/bin/bash
C=0 # initialise counter
< resources/testfile grep "e" | while read line; do
	# subshell here!
	((C++))
done
#not in subshell any more:
echo "We found $C matches for \"e\"."
