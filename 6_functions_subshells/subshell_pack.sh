#!/bin/bash

# some input from the main shell
N=15

RES=$(
	# do calculations in the subshell
	SUM=$((N+13))
	SQUARE=$((N*N))

	# pack the results with a :
	# i.e. echo them separated by a :
	echo "$SUM:$SQUARE"
)

# now use cut to unpack them and recover 
# the individual values
SUM=$(echo "$RES" | cut -d: -f1)
SQUARE=$(echo "$RES" | cut -d: -f2)


# echo them:
echo "$SUM"
echo "$SQUARE"
