#!/bin/bash

{
	echo record1 word2
	echo record2 word4
	echo record3 word6
} | awk '
	{ print NR ": first rule" }
	/4$/ { next; print NR " " $1 }
	{ print NR ": "  $2 }
'
