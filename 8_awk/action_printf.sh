#!/bin/bash
{
	echo 1 2 3 4
	echo 5 6 7 8
} | awk '
	$1 < 4 { printf $3 " " }
	$1 > 4 { printf $3 }
'
