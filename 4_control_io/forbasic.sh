#!/bin/bash

for word in 1 2 dadongs blubber; do
	echo $word
done

for row in 1 2 3 4 5; do
	for col in 1 2 3 4 5; do
		echo -n "$row.$col "
	done
	echo
done
