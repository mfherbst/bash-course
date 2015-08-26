#!/bin/bash

{
	echo record1 word2
	echo record2 word4
	echo record3 word6
} | awk '
	BEGIN { c=0 }
	{ c++ }
	{ print c ": first rule" }
	/4$/ { exit 42; print c " " $1 }
	{ print c ": "  $2 }
	END { print "quitting ..." }
'
echo "return code: $?"
