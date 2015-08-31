#!/bin/bash
echo | awk '{
	floatvar=3.2
	stringvar="abra"     #cannot be converted to number
	floatstring="1e-2"   #can be converted to number

	# calculation
	res1 = floatvar+floatstring
	res2 = floatvar + stringvar

	print res1 " " res2
}'
