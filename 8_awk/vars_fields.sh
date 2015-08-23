#!/bin/bash
echo "some 7 words for awk to process" | awk '
	{
		print "arithmetic: " 2*$2
		print $4 " " $1
	}
	
	{
		print "You gave me:  " $0
	}
	'
