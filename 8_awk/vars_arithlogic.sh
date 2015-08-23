#!/bin/bash
echo | awk '{
	v=3
	u=4
	
	print v "-" u "=" v-u	

	v+=2
	u*=0.5

	print v "%" u "=" v%u	


	# exponentiation is ^
	print v "^" u "=" v^u

	print v "==" u ": " v==u
	print v "!=" u ": " v!=u
	print v "!=" u "||" v "==" u ": " v!=u||v==u
	print v "!=" u "&&" v "==" u ": " v!=u&&v==u
}'
