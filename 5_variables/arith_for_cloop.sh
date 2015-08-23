#!/bin/bash
MAX=4
for((I=0; I<MAX; ++I)); do
	echo $I
done
echo
for((I=MAX-1; I>=0; --I));do 
	echo $I
done
