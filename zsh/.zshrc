# zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=3000
SAVEHIST=10000
setopt appendhistory extendedglob nomatch notify
bindkey -v
# end zsh-newuser-install
#
# compinstall
zstyle :compinstall filename '/Users/swoony/.zshrc'
autoload -Uz compinit
compinit
# end compinstall
#
# help
unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help
# end help
