#!/bin/bash

return_test() {
	if [ "$1" == "a" ]; then
		echo "No thanks"
		return 1
	fi

	echo "Thank you"
}

other_test() {
	[ "$1" == "b" ]
}

VAR=b
if other_test "$VAR"; then
	return_test "$VAR"
	echo $?
fi

return_test "a"
echo $?
