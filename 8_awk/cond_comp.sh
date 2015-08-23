#!/bin/bash
VAR="print"
echo "some test data 5.3" | awk -v "var=$VAR" '
	var == "print" { print $2 }
	var == "noprint" { print "no" }
	$4 > 2  { print "fulfilled" }
'
