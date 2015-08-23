#!/bin/bash

# initial note: 
#    this script is deliberately made cumbersome
#    this script is bad style. DO NOT COPY

# keyword
KEYWORD=${1:-0000}

ERROR=0
[ ! -f "bash_course.pdf" ] && (
	echo "Please run at the top of the bash_course repository" >&2
	ERROR=1
)

# change to the resources directory
if ! cd resources/; then
	echo "Could not change to resources directory" >&2
	echo "Are we in the right directory?"
	ERROR=1
fi

[ $ERROR -eq 1 ] && (
	echo "A fatal error occurred"
	exit 1
)

# list of all matching files
MATCHING=

# add files to list
ls matrices/*.mtx gutenberg/*.txt | while read line; do
	if < "$line" grep -q "$KEYWORD"; then
		MATCHING=$(
			echo "$MATCHING"
			echo $line
		)
	fi
done

# count the number of matches:
COUNT=$(echo "$MATCHING" | wc -l)

if [ $COUNT -gt 0 ]; then
	echo "We found $COUNT matches!"
	exit 0
else
	echo "No match" >&2
	exit 1
fi
