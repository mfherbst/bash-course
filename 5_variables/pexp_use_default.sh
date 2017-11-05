#!/bin/bash
DEFAULT="default"
A="value"
echo 1 ${A:-${DEFAULT}}
echo 2 $A

unset A
echo 3 ${A:-${DEFAULT}}
echo 4 $A
