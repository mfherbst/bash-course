#!/bin/bash
testfct() {
	echo blub  #write to stdout
	read test  #read from stdin
	read test2  #also read from stdin
	echo $test >&2 #write to stderr
	echo $test2  #write to stout
}

{
	echo line1
	echo line 2
} | testfct | grep 2
