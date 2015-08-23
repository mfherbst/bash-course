#!/bin/bash
echo | awk '
	{ N=4; A="blub" }
	{ print N }
	{ print "String " A " has the length " length(A) }
'
