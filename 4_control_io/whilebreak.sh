#!/bin/bash

C=0
while echo "while: $C"; [ $C -lt 3 ]; do
	((C++))  #increase C by 1
	echo $C
	[ $C -eq 2 ] && break
done

# a nested loop
N=5
while [ $N -gt 2 ]; do
	((N--)) #decrease N by 1
	echo "N is now $N"
	M=2
	while [ $M -lt 4 ]; do
		echo "    M is now $M"
		((M++))
		[ $M -eq 3 -a $N -eq 3 ] && break
	done
done
