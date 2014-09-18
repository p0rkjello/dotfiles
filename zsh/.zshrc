# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/p0rkjello/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Load powerline
if [[ -r /usr/lib/python3.4/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    source /usr/lib/python3.4/site-packages/powerline/bindings/zsh/powerline.zsh
fi

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

