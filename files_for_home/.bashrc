# ~/.bashrc: executed by bash(1) for non-login shells.

is_interactive_shell() {
        case $- in  
                *i*) return 0;; 
                *) return 1;; 
        esac 
}

# If not running interactively, don't do anything
is_interactive_shell || return 0

# Ignore duplicate lines and space lines: 
export HISTCONTROL=ignoreboth 
 
# append to the history file, don't overwrite it 
shopt -s histappend 
 
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1) 
export HISTSIZE=2000 
 
# check the window size after each command and, if necessary, 
# update the values of LINES and COLUMNS. 
shopt -s checkwinsize 

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

alias cd..='cd ..'
alias ..='cd ..'

if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

if [ -f "$HOME/return_code_prompt" ]; then
	. "$HOME/return_code_prompt"
fi
