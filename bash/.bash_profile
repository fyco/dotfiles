export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
export PATH=/usr/local/bin::$HOME/local/arcanist/bin:$PATH
export PATH=$PATH:/usr/local/opt/go/libexec/bin
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
alias vim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
