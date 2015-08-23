#!/bin/bash

C=0
while echo "while: $C"; [ $C -lt 3 ]; do
	((C++))  #increase C by 1
	[ $C -eq 2 ] && continue
	echo $C
done

# a nested loop
N=5
while [ $N -gt 2 ]; do
	((N--)) #decrease N by 1
	echo "N is now $N"
	M=2
	while [ $M -lt 4 ]; do
		((M++))
		[ $M -eq 3 -a $N -eq 3 ] && continue
		echo "    M is now $M"
	done
done
