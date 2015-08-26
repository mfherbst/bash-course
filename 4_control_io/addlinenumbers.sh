#!/bin/bash

if [ "$1" == "-h" ];then
	echo "Scipt adds line numbers to a file on \$1"
	exit 1
fi

if [ ! -f "$1" ]; then
	echo "File $1 not found" >&2
	exit 1
fi

C=0
while read line; do
	echo "$C:  $line"
	(( C++))
done < "$1"
