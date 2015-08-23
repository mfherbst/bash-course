#!/bin/bash

test() {
	echo "Hi from the test function"
}

VAR="blubber"
test -z "$VAR" && echo "VAR is zero"
