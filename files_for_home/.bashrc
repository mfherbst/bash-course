# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

case $- in 
	*i*) : ;; # continue 
	*) return;; 
esac 

################################

for script in $HOME/.bashrc.d/*; do
	# skip unreadable files and backup files
	[ ! -f "$script" ] && continue
	[ ! -r "$script" ] && continue
	basename "$script" | egrep -q "^#.*#$|~$|\.(bak|orig|rej|swp|dpkg.*)$" && continue

	. $script
done
