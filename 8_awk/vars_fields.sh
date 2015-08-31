#!/bin/bash
echo -e "some 7 words\tfor awk to process" | awk '
	{
		print "arithmetic: " 2*$2
		print $4 " " $1
	}
	
	{
		print "You gave me:  " $0
	}
	'
