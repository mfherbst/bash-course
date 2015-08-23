#!/bin/bash
echo "awk input" | awk '
	# missing condition => always done
	{ print "Hi user. This is what you gave me:" }

	# condition which is true and no action
	# => default print action
	1 == 1

	# another message:
	{ print "Thank you" }
'
