source $HOME/.zshenv

# history
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=6000
setopt appendhistory

# extended globbing and error on glob mismatch
setopt extendedglob nomatch

# immediately notify upon job finish
setopt notify

# ohmyzsh
export ZSH=$HOME/.oh-my-zsh
plugins=(git brew)
ZSH_THEME="robbyrussell"

# ignore untracked files when deciding if repo is dirty or not
DISABLE_UNTRACKED_FILES_DIRTY="true"

# fasd
if [[ -x =fasd ]] ; then
    fasd_cache="$HOME/.fasd-init-zsh"
	if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
  		fasd --init posix-alias zsh-hook zsh-ccomp zsh-ccomp-install >| "$fasd_cache"
	fi
	source "$fasd_cache"
	unset fasd_cache
    alias j='z'
    alias jj='zz'
fi

# rbenv
if [[ -x =rbenv ]] ; then
    eval "$(rbenv init -)"
fi

# source ohmyzsh.sh
source $ZSH/oh-my-zsh.sh

# terminfo fix for OSX/iTerm
# if [ -d $HOME/.terminfo ] ; then
#     export TERMINFO="$HOME/.terminfo"
# fi

# zsh syntax highlighting
source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
