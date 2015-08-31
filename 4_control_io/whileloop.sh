#!/bin/bash

C=0
while echo "while: $C"; [ $C -lt 3 ]; do
	((C++))  #increase C by 1
	echo $C
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
	done
done

# more generally the statement 
#    ((I++))
# increases the value of the variable I
# by one. Analoguously
#    ((I--))
# decreases it by one.
