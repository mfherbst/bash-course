#!/bin/bash
echo "some words for awk to process" | awk '
	{
		print "There are " NF " fields and the last is " $NF
	}'
