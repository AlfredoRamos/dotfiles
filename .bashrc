#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='\[\e[0;37m\][\[\e[0m\]\[\e[01;38;5;74m\]\u\[\e[0m\]\[\e[0;37m\]@\[\e[0m\]\[\e[1;38;5;146m\]\h\[\e[0m\] \[\e[1;37m\]\W\[\e[0m\]\[\e[0;37m\]]\[\e[0m\]\[\e[1;92m\]\$\[\e[0m\] '

# Man pages
man() {
	env LESS_TERMCAP_mb=$'\e[01;31m' \
	LESS_TERMCAP_md=$'\e[01;38;5;74m' \
	LESS_TERMCAP_me=$'\e[0m' \
	LESS_TERMCAP_se=$'\e[0m' \
	LESS_TERMCAP_so=$'\e[38;5;246m' \
	LESS_TERMCAP_ue=$'\e[0m' \
	LESS_TERMCAP_us=$'\e[04;38;5;146m' \
	man "$@"
}

# Default editor
export EDITOR=vim

# Ruby executable path
export PATH=$PATH:$HOME/.gem/ruby/2.2.0/bin