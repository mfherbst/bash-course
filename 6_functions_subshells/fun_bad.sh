#!/bin/bash
# a bad example

if [ "$1" == "-h" -o "$1" == "--help" ];then
	echo "Script to display basic information in an mtx file"
	exit 0
fi

foo() {
	echo $NONZERO
}

DATA=""

check2() {
	if [ -z "$DATA" ]; then
		echo "Can't read file" >&2
		return 1
	fi
	return 0
}

blubb() {
	echo $ROW
}

check1() {
	if [ ! -r "$1" ]; then
		echo "Can't read file" >&2
		return 1
	fi
	return 0
}

check1 "$1" || exit 1

fun1() {
	DATA=$(< "$1" grep -v "%" | head -n1)
}

fun1 "$1"
check2 || exit 1

reader() {
	echo $DATA | {
		read COL ROW NONZERO
	}
}

reader
echo -n "No rows:     "; blubb

tester() {
	echo $COL
}
echo -n "No cols:     "; tester
echo -n "No nonzero:  "; foo

exit 0
