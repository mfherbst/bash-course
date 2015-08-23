#!/bin/bash

{
	echo "data data data"
	echo "data data data"
	echo "data data data"
} | awk '
	BEGIN { number=0 } # optional: all uninitialised
	                   # variables are 0
	{ number += NF }
	END { print number }
'
