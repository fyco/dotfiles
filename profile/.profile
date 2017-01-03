# editor
export EDITOR='vim'

# path
## /usr/local/bin
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:$HOME/bin:$HOME/bin/py
export PATH=/usr/local/sbin:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

## phrac and puppet
export PATH=$PATH:$HOME/src/arcanist/bin:$HOME/src/puppet/modules/git/files/tools
## golang
export GOPATH=$HOME/src/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# build flags
export LDFLAGS=-L/usr/local/opt/openssl/lib
export CPPFLAGS=-I/usr/local/opt/openssl/include
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig

# manpath
export MANPATH="/usr/local/man:$MANPATH"

# brew flags
export HOMEBREW_MAKE_JOBS=5

# locale
export LANG=en_US.UTF-8
export LC_COLLATE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# ccache
export PATH=/usr/local/opt/ccache/libexec:$PATH
