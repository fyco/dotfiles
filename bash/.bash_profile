#history
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=2000
HISTFILESIZE=6000

#colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#prompt
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

## neovim alias
neovim=$(which nvim)
if [ -x "$neovim" ] ; then
  alias vim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
fi

# ls alias
alias ls='ls --color'

# bash completions, if available
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# fasd
fasd=$(which fasd)
if [ -x "$fasd" ] ; then
    fasd_cache="$HOME/.fasd-init-bash"
	if [ "$fasd" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
  		fasd --init posix-alias bash-hook bash-ccomp bash-ccomp-install >| "$fasd_cache"
	fi
	source "$fasd_cache"
	unset fasd_cache
    alias j='z'
    alias jj='zz'
fi

#rbenv
rbenv=$(which rbenv)
if [[ -x "$rbenv" ]] ; then
    eval "$(rbenv init -)"
fi


#locale
export LANG=en_CA.UTF-8
export LC_COLLATE=en_CA.UTF-8
export LANG=en_CA.UTF-8

# terminfo fix for OSX/iTerm
if [ -d $HOME/.terminfo ] ; then
    export TERMINFO="$HOME/.terminfo"
fi
