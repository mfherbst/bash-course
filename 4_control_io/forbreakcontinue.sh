#!/bin/bash

for word in 1 2 dadongs blubber; do
	echo "$word" | grep -q da && continue
	echo $word
done

for row in 1 2 3 4 5; do
	for col in 1 2 3 4 5; do
		[ $col -gt $row ] && break
		echo -n "$row.$col "
	done
	echo
done
