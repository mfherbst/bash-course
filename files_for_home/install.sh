#!/bin/bash

# install new files
for file in .bashrc .bashrc.d .profile .vimrc .screenrc .toprc; do
	if [ ! -f "$file" ]; then
		echo "Please run script directly from the directory using ./$(basename "$0")." >&2
		exit 1
	fi

	# the target file:
	TFILE="$HOME/$file"

	# if target file exists move it to .old:
	[ -f "$TFILE" ] && mv "$TFILE" "$TFILE.old"

	# copy new file:
	cp -a "$file" "$TFILE"
done

