#!/bin/bash
< resources/testfile grep "e" | {
	C=0
	while read line; do
		((C++))
	done
	echo "We found $C matches for \"e\"."
}
