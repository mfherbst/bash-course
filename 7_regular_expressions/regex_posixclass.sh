if [[ $1 =~ ^[[:space:]]*[0[:alpha:]]+ ]]; then
	# $1 starts arbitrarily many spaces
	# following by at least one 0 or letter
	echo Match
	exit 0
fi 
echo "No match"
exit 1
