export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#phrac
export PATH=/usr/local/bin::$HOME/src/arcanist/bin:$PATH
export PATH=$PATH:$HOME/src/puppet/modules/git/files/tools
#go
export GOPATH=$HOME/src/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin
#brew
export HOMEBREW_MAKE_JOBS=5
#ruby
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
#aliases
alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
alias vim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
alias ls='gls --color'

#locale
export LANG=en_CA.UTF-8
export LC_COLLATE=en_CA.UTF-8
export LANG=en_CA.UTF-8
