#!/bin/bash
# download neccessary book files from project gutenberg

return_url() {
	#$1: id
	local URL="http://www.gutenberg.lib.md.us"
	for ((i=0;i<${#1}-1;++i)) {
		URL="$URL/${1:$i:1}"
	}
	echo "$URL/$1/$1.txt"
}

verbose_sleep() {
	local WAIT_TIME=$1
	for ((;WAIT_TIME > 0; WAIT_TIME--)); do
		printf "\rSleeping for %5i secs." "${WAIT_TIME}"
		sleep 1
	done
	printf "\r"
}

LIST="1661 345 74 76 1184 1232 1322 135 158 161 16328 174 1952 2591 2701 30254 4300 5200 6130 844 8800 98"

#----

for book in $LIST; do
	wget --continue $(return_url $book) -O "pg$book.txt"
	verbose_sleep $((5+RANDOM%10))
done
