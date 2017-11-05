#!/bin/bash
VAR="a b c d"
VAR2="date $(date)"
for i in $VAR $VAR2; do
	echo $i   #note: all spaces become line breaks
done | head
