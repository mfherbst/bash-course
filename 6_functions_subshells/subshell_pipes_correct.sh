#!/bin/bash
COUNT=$(< resources/testfile grep "e" | {
	C=0
	while read line; do
		((C++))
	done
	echo $C
})

# Do postprocessing on COUNT, e.g. print
echo "We found $COUNT matches for \"e\"."
