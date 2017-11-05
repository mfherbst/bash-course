#!/bin/bash
ALTERNATE="alternate"
A="value"
echo 1 ${A:+${ALTERNATE}}
echo 2 $A

unset A
echo 3 ${A:+${ALTERNATE}}
echo 4 $A
