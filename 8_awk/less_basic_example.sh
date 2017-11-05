#!/bin/bash
{
	echo "awk input 1"
	echo "awk input 2"
} | awk '
	# missing condition => always done
	{ print "Hi user. This is what you gave me:" }

	# condition which is true and no action
	# => default print action
	1 == 1

	# another message which is always printed
	{ print "Thank you" }
'
