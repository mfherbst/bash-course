#!/bin/bash

# number of rounds:
N=10000

use_grep() {
	#$@ args passed to grep
	local TEXT=$(cat)

	for((i=0; i<N; ++i)); do
		echo "$TEXT" | grep $@
	done | tail -n1
}

testcase() {
	#@ args for grep ang egrep	
	local TEXT=$(cat)

	echo
	echo "-------------------------"
	echo "Testing grep with $@"
	time echo "$TEXT" | use_grep "$@"
	echo
	echo "-------------------------"
	echo "Testing grep -E with $@"
	time echo "$TEXT" | use_grep -E "$@"
}

echo "string" | testcase "test"
echo "string" | testcase "st."
echo "strrrr" | testcase "tr*"

