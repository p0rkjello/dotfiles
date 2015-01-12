# environment variables
export EDITOR="$(if [[ -n $DISPLAY ]]; then echo 'gedit'; else echo 'nano'; fi)"	# gedit, nano
PATH="`ruby -e 'print Gem.user_dir'`/bin:$PATH"

# Better history
export HISTCONTROL=ignoreboth
export HISTSIZE=1000
export HISTIGNORE="ls:pwd:exit"

# Alias definitions.
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
  alias pacman="pacman --color=auto"
fi

