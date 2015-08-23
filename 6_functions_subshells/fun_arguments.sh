#!/bin/bash

argument_analysis() {
	echo $1
	echo $2
	echo $@
	echo $#
}

# call function
argument_analysis 1 "2 3" 4 5
