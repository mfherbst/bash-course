#!/bin/bash
awk '
	# change the record separator
	BEGIN { RS="[^[:alnum:]]+" }
	# now each word is a separate record

	$0 == prev { print prev; ret=1; next }
	{ prev = $0 }	
	END { exit ret }
'
