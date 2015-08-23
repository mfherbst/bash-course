#!/bin/bash

{
	echo "not important"
	echo "data begin: 1 2 3"
	echo "nodata: itanei taen end"
	echo "other things"
} | awk '
	# start printing if line starts with data begin
	/^data begin/ { pr=1 }

	# print current line
	pr == 1

	# stop printing if end encountered
	/end$/ { pr=0 }
'
