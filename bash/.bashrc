#!/bin/bash

# bashrc

# Source global definitions
[[ -f /etc/bash.bashrc ]] && . /etc/bash.bashrc

# environment variables
export EDITOR="$(if [[ -n $DISPLAY ]]; then echo 'gedit'; else echo 'vim'; fi)"	# gedit, vim
PATH="`ruby -e 'print Gem.user_dir'`/bin:$PATH"
export PATH=$PATH:/vagrant/bin


# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
HISTIGNORE="ls:pwd:exit"



# bash_prompt.
[[ -f ~/.bash_prompt ]] && . ~/.bash_prompt

# Alias definitions.
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

# Enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  #alias dir='dir --color=auto'
  #alias vdir='vdir --color=auto'

  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
  alias pacman="pacman --color=auto"
fi
