#!/bin/bash

# function generating the output
output() {
	echo "line 1"
	echo "line 2"
	echo "line 3"
} 

echo "Program1:"
output | awk '1==1'

echo 
echo "Program2:"
output | awk '
	1==1 #default print action
	{ print "some stuff" }
'
