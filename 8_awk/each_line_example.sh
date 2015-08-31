#!/bin/bash

# function generating the output
output() {
	echo "line 1"
} 

echo "Program1:"
# a small awk program which just prints the output
# line-by-line as it is
# we use a condition which is always true and the 
# default action here (implicit print of the whole
# record, i.e. line)
output | awk '1==1'

echo 
echo "Program2:"
# a program with two rules:
# one which does the default printing 
# and a second one which prints an extra line 
# unconditionally
output | awk '
	1==1 #default print action
	{ print "some stuff" }
'
