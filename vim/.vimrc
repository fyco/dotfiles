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

" whitespace / tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" tab completion
set wildmenu
set wildmode=list,longest,full

"====================================
"░▀█▀░█▀█░▀█▀░█▀▀░█▀▄░█▀▀░█▀█░█▀▀░█▀▀
"░░█░░█░█░░█░░█▀▀░█▀▄░█▀▀░█▀█░█░░░█▀▀
"░▀▀▀░▀░▀░░▀░░▀▀▀░▀░▀░▀░░░▀░▀░▀▀▀░▀▀▀
"====================================
" syntax highlighting
syntax on

" use relative line numbering
set relativenumber
" default split configuration
set splitbelow
set splitright

" show matching parentheses/brackets
set showmatch

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

" leader shortcuts
nnoremap <leader>a :Ack

"============================
"░█▀█░█░░░█░█░█▀▀░▀█▀░█▀█░█▀▀
"░█▀▀░█░░░█░█░█░█░░█░░█░█░▀▀█
"░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀▀▀
"============================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
call vundle#end()
filetype plugin indent on

"========================
"░█▀▀░█▀█░█░░░█▀█░█▀▄░█▀▀
"░█░░░█░█░█░░░█░█░█▀▄░▀▀█
"░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀▀▀
"========================
colorscheme zenburn
