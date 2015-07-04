"""""""""""""""""""""""""""""
"       _
"__   _(_)_ __ ___  _ __ ___
"\ \ / / | '_ ` _ \| '__/ __|
" \ V /| | | | | | | | | (__
"  \_/ |_|_| |_| |_|_|  \___|
"
"""""""""""""""""""""""""""""
set nocompatible
set paste
let mapleader = ","
set encoding=utf-8
set backspace=indent,eol,start

" whitespace / tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" store backup and swap files in a central location
set backupdir^=~/.vim/_backup//    " where to put backup files.
set directory^=~/.vim/_temp//      " where to put swap files.

"====================================
"░▀█▀░█▀█░▀█▀░█▀▀░█▀▄░█▀▀░█▀█░█▀▀░█▀▀
"░░█░░█░█░░█░░█▀▀░█▀▄░█▀▀░█▀█░█░░░█▀▀
"░▀▀▀░▀░▀░░▀░░▀▀▀░▀░▀░▀░░░▀░▀░▀▀▀░▀▀▀
"====================================
" syntax highlighting
syntax on

" use relative line numbering
set number
" default split configuration
set splitbelow
set splitright

" show matching parentheses/brackets
set showmatch

" list characters
set list
set listchars=""            " reset
set listchars=tab:\ \       " display tab as " ", whitespace as "."
set listchars+=trail:.      " show trailing spaces as dots
set listchars+=extends:>    " 'more' indicator when wrap=off
set listchars+=precedes:<   " 'more' indicator when wrap=off

"========================
"░█▀▀░█▀▀░█▀█░█▀▄░█▀▀░█░█
"░▀▀█░█▀▀░█▀█░█▀▄░█░░░█▀█
"░▀▀▀░▀▀▀░▀░▀░▀░▀░▀▀▀░▀░▀
"========================
" be case insensitive
set ignorecase
set smartcase
set incsearch

" highlight search matches
set hlsearch

" use every magic regexes
" (more perl-like; no need to escape special characters)
nnoremap / /\v
vnoremap / /\v

"clear search highlights with <leader><space>
nnoremap <leader><space> :noh<cr>

"================================
"░█▄█░█▀█░█▀█░█▀█░▀█▀░█▀█░█▀▀░█▀▀
"░█░█░█▀█░█▀▀░█▀▀░░█░░█░█░█░█░▀▀█
"░▀░▀░▀░▀░▀░░░▀░░░▀▀▀░▀░▀░▀▀▀░▀▀▀
"================================
" make tab key match bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" quick quit
nnoremap <leader><leader> :xa<cr>

" prevent accidentally starting help
nnoremap <F1> <nop>
inoremap <F1> <nop>

" quick escape from input to command mode
imap jj <Esc>

" quick Ack
nnoremap <leader>a :Ack

" quick NERDTree
nnoremap <leader>nt :NERDTreeToggle<cr>

" quick buffer next/previous
nnoremap [b :bp<cr>
nnoremap ]b :bn<cr>

" quick switch between absolute and relative line numbers
nnoremap <leader>na :set norelativenumber<cr>:set number<cr>
nnoremap <leader>nr :set nonumber<cr>:set relativenumber<cr>
" quick turn off line numbers
nnoremap <leader>nn :set norelativenumber<cr>:set nonumber<cr>

"============================
"░█▀█░█░░░█░█░█▀▀░▀█▀░█▀█░█▀▀
"░█▀▀░█░░░█░█░█░█░░█░░█░█░▀▀█
"░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀▀▀
"============================
" You need to install Vundle before the following lines will work:
"
" git clone https://github.com/gmarik/Vundle.vim.git ~/dotfiles/vim/.vim/bundle/Vundle.vim
"
" Then, you can call :PluginInstall from vim to install the plugins you define below:
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
" YouCompleteMe is a code completion engine with support for native semantic completion
" of C/C++/Obj-C via Clang. It also supports Python, Go, Ruby, and others. See
" https://github.com/Valloric/YouCompleteMe for additional setup instructions and gotchas.
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'kien/ctrlp.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'hhff/SpacegrayEighties.vim'
call vundle#end()
filetype plugin indent on

"============================
" vim-airline
"============================
set laststatus=2 " always show airline
let g:airline_detect_paste = 0
let g:airline_theme = 'hybridline'

"========================
"░█▀▀░█▀█░█░░░█▀█░█▀▄░█▀▀
"░█░░░█░█░█░░░█░█░█▀▄░▀▀█
"░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀▀▀
"========================
colorscheme SpacegrayEighties

"================================
"░█░█░▀█▀░█░░░█▀▄░█▄█░█▀▀░█▀█░█░█
"░█▄█░░█░░█░░░█░█░█░█░█▀▀░█░█░█░█
"░▀░▀░▀▀▀░▀▀▀░▀▀░░▀░▀░▀▀▀░▀░▀░▀▀▀
"================================
set wildmenu
set wildmode=list,longest,full
" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
" Ignore librarian-chef, vagrant, test-kitchen and Berkshelf cache
set wildignore+=*/tmp/librarian/*,*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/*
" Ignore rails temporary asset caches
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*
" Disable temp and backup files
set wildignore+=*.swp,*~,._*
