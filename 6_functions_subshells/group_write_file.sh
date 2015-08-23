#!/bin/bash

{
	echo "Crazy header"
	echo
	echo "A first message to stderr" >&2
	echo "I want fish" | grep -w fish
	echo "lorem ipsum dolor sit amet"
	echo "This goes to the stderr" >&2
} > /tmp/some-file-here 2> /tmp/file-stderr

# print content
echo Everything on the first file:
echo -----------
cat /tmp/some-file-here
echo -----------
echo
echo "Everything on the second file:"
echo -----------
cat /tmp/file-stderr
echo -----------

# cleanup
rm /tmp/some-file-here /tmp/file-stderr
