export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
export PATH=/usr/local/bin::$HOME/src/arcanist/bin:$PATH
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/src/go
export PATH=$PATH:$GOPATH/bin
export HOMEBREW_MAKE_JOBS=5
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
alias vim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC -I rc'
alias ls='gls --color'
# Initialization for FDK command line tools.Thu Jan 28 23:21:13 2016
FDK_EXE="/Users/swoony/bin/FDK/Tools/osx"
PATH=${PATH}:"/Users/swoony/bin/FDK/Tools/osx"
export PATH
export FDK_EXE
