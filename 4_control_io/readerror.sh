#!/bin/bash
while true; do		#infinite loop
	# the next command breaks the loop if it was successful
	read -p "Please type 3 numbers >" N1 N2 N3 && break
	# if we get here read was not successful
	echo "Did not understand your results, please try again"
done
echo "You entered \"$N1\", \"$N2\", \"$N3\""
