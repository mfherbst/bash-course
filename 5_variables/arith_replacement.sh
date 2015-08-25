#!/bin/bash

C=1
while ((++C<40)); do
	if ((C%3 == 0));then
		echo "I can be divided by 3: $C"
	fi
done
