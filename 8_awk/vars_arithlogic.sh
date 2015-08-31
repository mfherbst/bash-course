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

	# need to enforce that comparison operatiors are 
	# executed before concatenation of the resulting
	# strings. Not quite sure why.
	print v "==" u ": " (v==u)
	print v "!=" u ": " (v!=u)
	print v "!=" u "||" v "==" u ": " (v!=u||v==u)
	print v "!=" u "&&" v "==" u ": " (v!=u&&v==u)
}'
