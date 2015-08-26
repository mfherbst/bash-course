#!/bin/bash
awk '
	# change the record separator to anything
	# which is not an alphanumeric (we consider
	# a different word to start at each alphnum-
	# eric character)
	BEGIN { RS="[^[:alnum:]]+" }
	# now each word is a separate record

	$0 == prev { print prev; ret=1; next }
	{ prev = $0 }	
	END { exit ret }
'
