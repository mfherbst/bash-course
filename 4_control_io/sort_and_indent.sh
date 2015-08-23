#!/bin/bash
if [ "$1" == "-h" ];then
	echo "Scipt sorts lines of file \$1 and adds indention"
	echo "Sorted file is written to \$1.sorted"
	exit 1
fi

if [ ! -f "$1" ]; then
	echo "File $1 not found" >&2
	exit 1
fi

echo "Writing sorted data to \"$1.sorted\""
< "$1" sort | while read line; do
	echo "   $line"
done > "$1.sorted"
