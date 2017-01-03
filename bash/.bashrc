source $HOME/.profile

# history
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=2000
HISTFILESIZE=6000

# colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# prompt
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# ruby
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# neovim
neovim=$(which nvim)
if [ -x "$neovim" ] ; then
  alias vim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
fi

# ls
alias ls='ls --color'
alias l='ls -al --color'

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

# rbenv
rbenv=$(which rbenv)
if [[ -x "$rbenv" ]] ; then
    eval "$(rbenv init -)"
fi

# terminfo fix for OSX/iTerm
if [ -d $HOME/.terminfo ] ; then
    export TERMINFO="$HOME/.terminfo"
fi
