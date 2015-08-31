#!/bin/bash

# define a shell variable:
A=laber

echo | awk '
	# define an awk variable and print it:
	{ N=4; print N }

	# print something using the non-present shell variable A:
	{ print "We have no clue about string A: \"" A "\"" }
'

# show that the shell knows A, but has no clue about N:
echo --$A--$N--
