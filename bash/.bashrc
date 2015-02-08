# Source global definitions
[[ -f /etc/bash.bashrc ]] && . /etc/bash.bashrc

export PATH=$PATH:/vagrant/bin

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
HISTIGNORE="ls:pwd:exit"

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# environment variables
export EDITOR="$(if [[ -n $DISPLAY ]]; then echo 'gedit'; else echo 'vim'; fi)"	# gedit, vim
PATH="`ruby -e 'print Gem.user_dir'`/bin:$PATH"

# Powerline
POWERPATH="/usr/lib/python3.4/site-packages"
if [[ -f $POWERPATH/powerline/bindings/bash/powerline.sh ]]; then
  powerline-daemon -q 
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . "$POWERPATH"/powerline/bindings/bash/powerline.sh
fi

# Alias definitions.
[[ -f ~/.aliases ]] && . ~/.aliases

alias reload!='. ~/bashrc'

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

