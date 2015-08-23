#!/bin/bash

if [[ "$1" =~ ("-h"|"--help") ]]; then
	echo Script to count number of characters excluding any comments, empty lines or leading/trailing whitespace
	exit 0
fi

FILE=$1
if [ ! -f "$FILE" ]; then
	echo "File $FILE not found" >&2
	exit 1
fi

< "$FILE" sed "s/#[^\"']*$//g;s/^[[:space:]]*//g;s/[[:space:]]$//g;/^$/d" | wc -m
