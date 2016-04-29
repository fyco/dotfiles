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

# aliases
## neovim
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

# z autojump
. $HOME/.rupaz/z.sh

# zsh syntax highlighting
source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
