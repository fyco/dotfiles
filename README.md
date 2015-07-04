# jeff's dotfiles
Rudimentary dotfiles for vim, ack, and others.  
Feel free to use and tweak it for your own purpose.  

Usage:  
1. Get GNU stow (from `apt`, `brew`, or whatever)  
2. Clone this repo into your $HOME  
3. From the repo directory, run `stow <folder>` to symlink the dotfiles under each `<folder>` into your $HOME. Run `stow -D <folder>` to reverse the process.  
4. If you plan on using vim, then, from the repo root do `git clone https://github.com/gmarik/Vundle.vim vim/.vim/bundle/Vundle.vim` to install Vundle into your .vim/bundle/ directory. Then the next time you run vim, do :PluginInstall and Vundle will download and install all of the plugins mentioned in the .vimrc.  
