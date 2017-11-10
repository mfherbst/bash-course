map() {
	COMMAND=$1  # read the command
	shift       # shift $1 away

	# now for all remaining arguments execute
	# the command with the argument:
	for val in "$@"; do
		$COMMAND $val
	done
}
