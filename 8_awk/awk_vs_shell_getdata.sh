#!/bin/bash

# some data we have available on the shell
VAR="3.4"
OTHER="6.7"

# do calculation in awk and return packed data
RES=$(echo "$VAR $OTHER" | awk '{
	sum=$1 + $2
	product=$1*$2
	print sum "+" product
}')

# unpack the data on the shell again:
SUM=$(echo "$RES" | cut -f1 -d+)
PRODUCT=$(echo "$RES" | cut -f2 -d+)

# use it in an echo
echo "The sum is: $SUM"
echo "The product is: $PRODUCT"
