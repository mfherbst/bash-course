#!/bin/bash
VAR="15"

echo "data data data" | awk -v "var=$VAR" '
	var !~ /^[0-9]$/ && $2 == "data" { 
		print "Both are true" 
	}
'
