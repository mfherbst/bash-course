#!/bin/bash
USERARG=0	# bash does not know bolean
		# convention is to use 0/1 or y/n for this purpose

# [ "$1" ] is the same as ! [ -z "$1" ]
if [ "$1" ]; then
	USERARG=1
	echo "Dear user: Thanks for feeding me input"
fi

if [ $USERARG -ne 1 ];then
	echo "Nothing to do"
	exit 0
fi

if [ "$1" == "status" ]; then
	echo "I am very happy"
elif [ "$1" == "weather" ]; then
	echo "No clue"
elif [ "$1" == "date" ]; then
	date
elif [ -f "$1" ];then
	if ! < "$1" grep "robot"; then
		echo "Could not find keyword" >&2
		exit 1
	fi
else
	echo "Unknown command: $1" >&2
	exit 1
fi
