#!/bin/bash
test() {
	echo "Hi from the test function"
}
test 1 -gt 2 && echo "1 is greater than 2"
