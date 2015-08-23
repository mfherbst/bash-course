#!/bin/bash
OIFS=$IFS
IFS="+"
VAR="4+5+6+7"

# before the for loop runs the value after the "in"
# is subject to word splitting
echo first loop
for number in $VAR; do
	echo $number
done
echo

# it is good practice to change IFS back to the original
# after you used the trick, otherwise all sorts of crazy
# erros can occurr
IFS=$OIFS

echo second loop
for i in 1 2 3 4; do
	# this works now as intuitively expected:
	echo $i
done
