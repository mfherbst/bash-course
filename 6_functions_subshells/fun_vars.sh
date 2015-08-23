#!/bin/bash
# Global variables:
VAR1=vvv
VAR3=lll

variable_test() {
	local FOO=bar
	echo $VAR1
	VAR3=$FOO
}

echo "--$VAR1--$FOO--$VAR3--"
variable_test
echo "--$VAR1--$FOO--$VAR3--"
