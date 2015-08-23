#!/bin/bash
A=3
B=6
pwd
(
	A=5  #locally change varible
	echo "Hello from subshell: A: $A   B: $B"
	cd ..  #locally change directory
	pwd
)
echo "Hello from main shell: A: $A   B: $B"
pwd
