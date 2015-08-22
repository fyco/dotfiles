"""""""""""""""""""""""""""""
"       _
"__   _(_)_ __ ___  _ __ ___
"\ \ / / | '_ ` _ \| '__/ __|
" \ V /| | | | | | | | | (__
"  \_/ |_|_| |_| |_|_|  \___|
"
"""""""""""""""""""""""""""""
if !has('nvim')
set ttyfast
set ttyscroll=3
set nocompatible
endif

if has('nvim')
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

let mapleader = ","
set encoding=utf-8
set backspace=indent,eol,start
set clipboard=unnamed " use the system clipboard

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

" quick quit
nnoremap <leader><leader> :xa<cr>

" prevent accidentally starting help
nnoremap <F1> <nop>
inoremap <F1> <nop>

" quick escape from input to command mode
inoremap jj <Esc>

" quick buffer next/previous
nnoremap [b :bp<cr>
nnoremap ]b :bn<cr>
" quick buffer close without closing split
nnoremap <C-c> :bp\|bd #<cr>

" quick switch between absolute and relative line numbers
nnoremap <leader>na :set norelativenumber<cr>:set number<cr>
nnoremap <leader>nr :set nonumber<cr>:set relativenumber<cr>
" quick turn off line numbers
nnoremap <leader>nn :set norelativenumber<cr>:set nonumber<cr>

" quickfix list: easy next/previous/first/last mappings
nnoremap <leader>[q :cprev<cr>
nnoremap <leader>]q :cnext<cr>
nnoremap <leader>[Q :cfirst<cr>
nnoremap <leader>]Q :clast<cr>

" neovim: exit terminal focus using ctrl+a or Esc
if has('nvim')
tnoremap <c-a> <C-\><C-n>
tnoremap <Esc> <C-\><C-n>
endif

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
Plugin 'mkitt/tabline.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'hhff/SpacegrayEighties.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'airblade/vim-rooter'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'mihaifm/bufstop'
call vundle#end()
filetype plugin indent on

"============================
" YouCompleteMe
"============================
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>
nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>
nnoremap <leader>t ::YcmCompleter GetType<CR>
let g:ycm_confirm_extra_conf = 0 "Do not ask when starting vim
let g:ycm_register_as_syntastic_checker = 1
let g:syntastic_always_populate_loc_list = 1
let g:ycm_collect_identifiers_from_tags_files = 1 "use `ctags -R --fields=+l` to generate compatible tags
set tags+=./.tags
set tags+=./tags

"============================
" nerdtree
"============================
nnoremap <leader>nt :NERDTreeToggle<cr> " quick nerdtree toggle
nnoremap <leader>nf :NERDTreeFind<cr> " reveal in sidebar

"============================
" vim-airline
"============================
set laststatus=2 " always show airline
let g:airline_detect_paste = 0
let g:airline_theme = 'hybridline'
let g:airline_section_y = ""
let g:airline#extensions#tabline#enabled = 1

"============================
" vim-gitgutter
"============================
let g:gitgutter_enabled = 0 " start with gitgutter disabled
nnoremap <leader>ggg :GitGutterToggle<cr> " toggle gitgutter
nnoremap <leader>ggh :GitGutterLineHighlightsToggle<cr> " toggle line highlights

"============================
" tagbar
"============================
nmap <F8> :TagbarToggle<CR>

"============================
" bufstop
"============================
map <leader>b :Bufstop<CR>             " get a visual on the buffers
map <leader>a :BufstopModeFast<CR>     " a command for quick switching
map <C-tab>   :BufstopBack<CR>
map <S-tab>   :BufstopForward<CR>
let g:BufstopAutoSpeedToggle = 1       " now I can press ,3,3,3 to cycle the last 3 buffers

"========================
"░█▀▀░█▀█░█░░░█▀█░█▀▄░█▀▀
"░█░░░█░█░█░░░█░█░█▀▄░▀▀█
"░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀▀▀
"========================
colorscheme Tomorrow-Night-Eighties
hi IncSearch ctermfg=236 ctermbg=114 cterm=NONE guifg=#2d2d2d guibg=#99cc99 gui=NONE
hi Search ctermfg=236 ctermbg=114 cterm=underline guifg=#2d2d2d guibg=#99cc99 gui=NONE

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
