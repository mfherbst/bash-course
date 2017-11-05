#!/bin/bash
A="value"
echo 1 ${A:="new value"}
echo 2 $A

unset A
echo 3 ${A:="newer value"}
echo 4 $A
