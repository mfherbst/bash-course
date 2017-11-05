#!/bin/bash
# Store the original field separator
# and change to + for the next for loop
OIFS=$IFS
IFS="+"
for number in 4+5+6+7; do
	echo $number
done

# it is good practice to change IFS back to the
# original after you used the trick, otherwise
# all sorts of crazy errors can occur at a later
# point during the script
IFS=$OIFS
for val in 1 2 3; do
	echo $val;
done
