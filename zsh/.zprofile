eval $(keychain --eval --agents ssh $HOME/.ssh/id_p0rkjello $HOME/.ssh/id_github)
PATH="`ruby -e 'print Gem.user_dir'`/bin:$PATH"

