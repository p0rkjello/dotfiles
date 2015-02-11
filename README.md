dotfiles
========

dotfiles sourced from various locations.

Clone the repository then either create symlinks or use [STOW](http://www.gnu.org/software/stow/manual/stow.html).

### symlink example

    $  ln -s dotfiles/bash/.bashrc
    $  ln -s dotfiles/bash/.bash_profile

### stow example

    $  cd dotfiles
    $  stow bash

