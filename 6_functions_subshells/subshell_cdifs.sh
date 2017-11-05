#!/bin/bash
# Here want to do some stuff in the PWD
echo "The list of files in the PWD:"
ls | head -n 4
(
	# Alter the environment:
	# different working directory and IFS separator
	cd resources/matrices
	IFS=":"

	echo
	echo "The list of files in resources/matrices"
	ls | head -n4

	echo
	echo "Some paths:"
	for path in $PATH; do
		echo $path
	done | head -n4
)

# and we are back to the original
echo
for i in word1:word2; do
	echo $i
done
