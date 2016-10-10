# editor
export EDITOR='vim'

# history
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=6000
setopt appendhistory

# extended globbing and error on glob mismatch
setopt extendedglob nomatch

# immediately notify upon job finish
setopt notify

# vim bindings
# bindkey -v

# ohmyzsh
export ZSH=$HOME/.oh-my-zsh
plugins=(git brew)
ZSH_THEME="robbyrussell"

# ignore untracked files when deciding if repo is dirty or not
DISABLE_UNTRACKED_FILES_DIRTY="true"

# path
## /usr/local/bin
export PATH=/usr/local/bin:$PATH
## phrac and puppet
export PATH=$PATH:$HOME/src/arcanist/bin:$HOME/src/puppet/modules/git/files/tools
## golang paths
export GOPATH=$HOME/src/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:$HOME/bin:$HOME/bin/py
export PATH=/usr/local/sbin:$PATH
## build flags
export LDFLAGS=-L/usr/local/opt/openssl/lib
export CPPFLAGS=-I/usr/local/opt/openssl/include
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig

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

#rbenv
if [[ -x =rbenv ]] ; then
    eval "$(rbenv init -)"
fi

# neovim alias
if [[ -x =nvim ]] ; then
  alias vim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
fi

# manpath
export MANPATH="/usr/local/man:$MANPATH"

# brew flags
export HOMEBREW_MAKE_JOBS=5

# source ohmyzsh.sh
source $ZSH/oh-my-zsh.sh

# locale
export LANG=en_US.UTF-8
export LC_COLLATE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# terminfo fix for OSX/iTerm
if [ -d $HOME/.terminfo ] ; then
    export TERMINFO="$HOME/.terminfo"
fi

# zsh syntax highlighting
source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
