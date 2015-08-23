#!/bin/bash

VAR="abc"
NUMBER="5.4"
OTHER="3"

# ...

echo "data 1 2 3" | awk -v "var=$VAR" -v "num=$NUMBER" -v "other=$OTHER" '
	{
		print $1 " and " var

		sum = $2 + $3
		print num*sum
		print $4 " " other
	}
'
