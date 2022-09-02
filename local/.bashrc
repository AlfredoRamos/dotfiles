# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='[\[\e[01;38;5;74m\]\u\[\e[0m\]@\[\e[1;38;5;146m\]\h\[\e[0m\] \W\[\e[38;5;214m\]$(__git_ps1 " (%s)")\[\e[0m\]]\[\e[1;92m\]\$\[\e[0m\] '

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

# xterm 256 colors
export TERM=xterm-256color

# Default editor
export EDITOR=vim

# Go
export PATH="${PATH}":"${HOME}"/go/bin

# User local apps
export PATH="${PATH}":"${HOME}"/.local/bin

# VDPAU
# https://wiki.archlinux.org/index.php/Hardware_video_acceleration
export VDPAU_DRIVER=radeonsi

# Git
. /usr/share/git/completion/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM=true

# ASDF
. /opt/asdf-vm/asdf.sh
