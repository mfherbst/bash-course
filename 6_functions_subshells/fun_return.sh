#!/bin/bash

comment_on_letter() {
	if [ "$1" != "a" ]; then
		echo "Gwk ... I only like a, not $1"
		return 1
	fi
	echo "Ah ... a is my favorite letter"
}

is_letter_b() {
	[ "$1" == "b" ]
}

VAR=b
if is_letter_b "$VAR"; then
	comment_on_letter "$VAR"
	echo "RC of comment_on_letter: $?"
fi

comment_on_letter "a"
echo "RC of comment_on_letter: $?"
