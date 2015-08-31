#!/bin/bash
A=-1
# everything between $( and ) in the next
# line is a subshell. The increment is lost.
echo $( ((A++)); echo $A )
echo $A
