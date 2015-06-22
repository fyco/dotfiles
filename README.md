# jeff's dotfiles
Rudimentary dotfiles for vim, ack, and others. Uses Janus to mod vim for now, but probably won't in the near future.
Really only intended for my own personal use, but feel free to fork it tweak it for your own purposes.

Usage:  
1. Get GNU stow (from `apt`, `brew`, or whatever)  
2. Clone this repo into your $HOME  
3. From the repo directory, run `stow <folder>` to symlink the dotfiles under each `<folder>` into your $HOME. Run `stow -D <folder>` to reverse the process.  
4. To use the vim customizations, first run the included janus_install.sh script before running `stow vim`.  
