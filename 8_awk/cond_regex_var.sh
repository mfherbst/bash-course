#!/bin/bash
VAR="15"

echo "data data data" | awk -v "var=$VAR" '
	# executed if var is a single-digit number:
	var ~ /^[0-9]$/ { 
		print "var is a single digit number" 
	}

	# executed if var is NOT a single-digit
	var !~ /^[0-9]$/ { 
		print "var is not a single digit" 
	}

	$2 ~ /^.a/ { 
		print "2nd field has a as second char" 
	}
'
