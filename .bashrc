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
bind '"jk":vi-movement-mode'
set editing-mode vi

export HISTSIZE=1000
export HISTFILESIZE=2000
export TERM=xterm-256color

#Define Prompt
PS1='\[\e[33m\]\u\[\e[m\]\[\e[34m\]@\[\e[m\]\[\e[37m\]\h\[\e[m\]:\[\e[35m\]\W\[\e[m\]'

test -f ~/.bash_aliases && . ~/.bash_aliases
