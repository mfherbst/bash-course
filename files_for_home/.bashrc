# ~/.bashrc: executed by bash(1) for non-login shells.

###################################
# Settings for this .bashrc

# change the following to 1 if the return code shall show up.
SHOW_RETURN_CODE=0

###################################

is_interactive_shell() {
        case $- in  
                *i*) return 0;; 
                *) return 1;; 
        esac 
}

# If not running interactively, don't do anything
is_interactive_shell || return 0

###################################
# history settings:


# Ignore duplicate lines and space lines: 
export HISTCONTROL=ignoreboth 
 
# append to the history file, don't overwrite it 
shopt -s histappend 
 
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1) 
export HISTSIZE=2000 
 
###################################
# other shell options:

# check the window size after each command and, if necessary, 
# update the values of LINES and COLUMNS. 
shopt -s checkwinsize 

# Set vi editing mode:
set -o vi

###################################
# colour for the shell

# Use color if terminal has the capability
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)

	UCOL="\[\033[0;00m\]"       # color for user
	HCOL="\[\033[0;33m\]"       # color for host
	PCOL="\[\033[1;34m\]"       # color for dir
	DEFC="\[\033[0;00m\]"       # default color
	PS1="${debian_chroot:+($debian_chroot)}$UCOL\u$DEFC@$HCOL\h$DEFC:$PCOL\w$DEFC\$ "

	unset UCOL HCOL PCOL DEFC
else
	PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi

# If this is an xterm set the title to user@host:dir
case "$TERM" in
	xterm*|rxvt*)
		PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
		;;
	*)
		;;
esac

###################################
# colour for other programs:

# Enable color support of ls
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
fi

GREP_OPTIONS='--color=auto'
alias grep='grep $GREP_OPTIONS'
alias fgrep='fgrep $GREP_OPTIONS'
alias egrep='egrep $GREP_OPTIONS'
alias zgrep='zgrep $GREP_OPTIONS'
alias bzgrep='bzgrep $GREP_OPTIONS'
alias xzgrep='xzgrep $GREP_OPTIONS'

export LS_OPTIONS='--color=auto'
alias ls='ls -vF $LS_OPTIONS'
alias ll='ls -al'

unset GREP_OPTIONS

###################################
# misc

# change the prompt if the user wishes
if [ "$BASH" == "/bin/bash" -a "$SHOW_RETURN_CODE" == "1"  ]; then
	promt_extra() {
		local RET=$?
		if [ "$RET" != "0" ]; then
			echo -e "rc: \033[0;32m$RET\033[0;00m"
		fi
	}
	export PROMPT_COMMAND='promt_extra'
fi

# Enable bash completion:
if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

###################################
# cleanup
unset SHOW_RETURN_CODE
