#!/bin/bash
COUNT=$(find -type f | {
	C=0
	while read line; do
		((C++))
	done
	echo $C
})
echo "We found $COUNT files"
