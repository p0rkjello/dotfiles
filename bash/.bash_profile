[[ -z "$PS1" ]] && return
[[ -f ~/.bashrc ]] && . ~/.bashrc

eval $(keychain --eval --agents ssh $HOME/.ssh/id_p0rkjello $HOME/.ssh/id_github)
