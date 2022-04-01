#!bash
case $- in
  *i*) ;;
    *) return;;
esac

shopt -s histappend
shopt -s expand_aliases
shopt -s dotglob
shopt -s extglob
shopt -s globstar
shopt -s checkwinsize

set -o noclobber
set -o vi
set editing-mode vi
bind '"jk":vi-movement-mode'

export HISTSIZE=5000
export HISTFILESIZE=2000
export TERM=xterm-256color

#Define Prompt
PS1='\[\e[33m\]\u\[\e[m\]\[\e[34m\]@\[\e[m\]\[\e[37m\]\h\[\e[m\]:\[\e[35m\]\W\[\e[m\]'

test -f ~/.bash_aliases && . ~/.bash_aliases
test -f ~/.bash_functions && . ~/.bash_functions

#Color for less manpages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

