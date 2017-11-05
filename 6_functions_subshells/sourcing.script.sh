#!/bin/bash

# Extend path such that the bash can find the script
# to be sourced.
PATH="$PATH:6_functions_subshells"
. sourcing.lib.sh  # lookup of sourcing.lib.sh performed using PATH

echo $VAR
testfunction
