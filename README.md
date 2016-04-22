1. have GNU stow.
2. clone this repo into $HOME.
3. from the repo root, run `stow <folder>` to symlink the dotfiles under each `<folder>` into your $HOME. Run `stow -D <folder>` to reverse the process.
4. If using vim, then from the repo root also run `git clone https://github.com/gmarik/Vundle.vim vim/.vim/bundle/Vundle.vim` to install Vundle into your .vim/bundle/ directory. Then, the next time you run vim, do :PluginInstall to have Vundle download and install all of the plugins mentioned in the .vimrc
