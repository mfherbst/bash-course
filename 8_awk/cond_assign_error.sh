#!/bin/bash
{
	echo "not important"
	echo "data begin"
	echo "1 2 3"
	echo "end"
	echo "other things"
} | awk '
	BEGIN {
		# initialise pr as 0
		# printing should only be done if pr==1
		pr=0
	}

	# start printing if line starts with data begin
	/^data begin/ { pr=1 }

	# stop printing if end encountered
	/end$/ { pr=0 }

	# print first two fields of current line
	# error here
	pr = 1 { print $1 " " $2 }
'
