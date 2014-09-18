# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval $(ssh-agent)

# environment variables
export EDITOR="$(if [[ -n $DISPLAY ]]; then echo 'gedit'; else echo 'nano'; fi)"	# gedit, nano

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Powerline
if [ -f /usr/lib/python3.4/site-packages/powerline/bindings/bash/powerline.sh ]; then
	powerline-daemon -q
	POWERLINE_BASH_CONTINUATION=1
	POWERLINE_BASH_SELECT=1
	source /usr/lib/python3.4/site-packages/powerline/bindings/bash/powerline.sh
fi

# Enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  #alias dir='dir --color=auto'
  #alias vdir='vdir --color=auto'

  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

