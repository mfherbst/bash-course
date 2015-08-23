#!/bin/bash
((	
	C=1,
	D=2,

	SUM=C+D,
	DIV=C/D,
	MOD=C%D,
	EXP=D**4
))
echo "C:        $C"
echo "D:        $D"
echo
echo "SUM=C+D:  $SUM"
echo "DIV=C/D:  $DIV"
echo "MOD=C%D:  $MOD"
echo "EXP=D**4: $EXP"

((
	CAFTER=C++,
	DAFTER=--D
))
echo "C:        $C"
echo "D:        $D"
echo "CAFTER:   $CAFTER"
echo "DAFTER:   $DAFTER"
