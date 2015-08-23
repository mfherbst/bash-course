#!/bin/bash
< /etc/passwd awk -v "user=$USER" '
	# set field separator to be : or , or many of these chars
	BEGIN {FS="[:,]+" }

	# found the entry for the current user?
	$1 == user {
		# print some info:
		print "Your username:       " $1
		print "Your uid:            " $3
		print "Your full name:      " $5
		print "Your home:           " $6
		print "Your default shell:  " $7
	}
'
