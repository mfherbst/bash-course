#!/bin/bash
# download neccessary book files from project gutenberg

return_url() {
	# $1: id
	# $2: suffix
	local URL="http://www.mirrorservice.org/sites/ftp.ibiblio.org/pub/docs/books/gutenberg"
	for ((i=0;i<${#1}-1;++i)) {
		URL="$URL/${1:$i:1}"
	}
	echo "$URL/$1/$1$2.txt"
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

WGET_ARGS="--continue --local-encoding=ASCII"

#----

RC=0
for book in $LIST; do
	wget $WGET_ARGS $(return_url $book) -O "pg$book.txt"
	WGRC="$?"
	if [ "$WGRC" == "8" ]; then
		# Error response from server. Probably we need to add a "-0"
		# to the file name
		wget $WGET_ARGS $(return_url $book "-0") -O "pg$book.txt"
		WGRC="$?"
	fi
	[ "$WGRC" != 0 ] && RC=1

	verbose_sleep $((2+RANDOM%5))
done

exit $RC
