#!/bin/bash
VAR="a b c d"
VAR2=$(< resources/matrices/3.mtx grep 1)
for i in $VAR $VAR2; do
	echo $i   #note: all spaces become line breaks
done | head
