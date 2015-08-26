#!/bin/bash

generator() {
	echo "line1"
	echo "      line  2  "
	echo "LiNE3"
	echo
}

generator | sed 's/in/blablabla/'
echo "-----"
generator | sed 's/i.*[1-3]/...&.../'
echo "-----"

# a very common sequence to normalise input
generator | sed '
	s/[[:space:]][[:space:]]*/ /g
	s/^[[:space:]]//
	s/[[:space:]]$//
	/^$/d
'
