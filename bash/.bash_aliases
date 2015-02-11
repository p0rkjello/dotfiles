#!/bin/bash

# bash_aliases


#alias tmux="tmux -u2 attach || tmux -u2 new"

# Allow passing aliases to sudo
alias sudo='sudo '

# PS
alias psa="ps aux"
alias psg="ps aux | grep "
alias psr='ps aux | grep ruby'

# Moving around
alias cdb='cd -'
alias cls='clear;ls'

# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h -d 2'

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias screen='TERM=screen screen'
alias clr='clear'

alias vi="vim"
alias edit="vim"
alias grep="grep -nE --color"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias mkdir="mkdir -pv"
alias cp='cp -v'
alias cpr='cp -r'
alias mv='mv -v'
alias chmod='chmod -v --preserve-root'
alias chown='chown -v --preserve-root'
alias chgrp='chgrp -v --preserve-root'
