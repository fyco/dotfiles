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
" don't expand tabs for .go files
au BufNewFile,BufRead *.go setlocal noet

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

" quicker window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" quick escape from input to command mode
inoremap fd <Esc>

" quick buffer next/previous
nnoremap [b :bp<cr>
nnoremap ]b :bn<cr>
" quick tab next/previous
nnoremap [t :tabp<cr>
nnoremap ]t :tabn<cr>
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

" neovim: exit terminal focus using Esc or fd
if has('nvim')
tnoremap fd <C-\><C-n>
tnoremap <Esc> <C-\><C-n>
endif

"============================
"░█▀█░█░░░█░█░█▀▀░▀█▀░█▀█░█▀▀
"░█▀▀░█░░░█░█░█░█░░█░░█░█░▀▀█
"░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀▀▀
"============================
" managed by pathogen and submodules
execute pathogen#infect()
filetype plugin indent on

"============================
" golint
"============================
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim

"============================
" CtrlP
"============================
let g:ctrlp_working_path_mode = ""
let g:ctrlp_max_files=0

"============================
" Vim-Go
"============================
let g:go_highlight_types = 1
"let g:go_highlight_fields = 1
"let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_build_constraints = 1
"============================
" Deoplete
"============================
let g:deoplete#enable_at_startup = 1

"============================
" YouCompleteMe
"============================
" nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
" nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>
" nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>
" nnoremap <leader>t ::YcmCompleter GetType<CR>
" let g:ycm_confirm_extra_conf = 0 "Do not ask when starting vim
" let g:ycm_register_as_syntastic_checker = 1
" let g:ycm_collect_identifiers_from_tags_files = 1 "use `ctags -R --fields=+l` to generate compatible tags
" set tags+=./.tags
" set tags+=./tags
"
"============================
" Syntastic
"============================
let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++14 -stdlib=libc++'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

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
let g:airline_theme = 'onedark'
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
colorscheme SpacegrayEighties
hi IncSearch ctermfg=236 ctermbg=114 cterm=NONE guifg=#2d2d2d guibg=#99cc99 gui=NONE
hi Search ctermfg=236 ctermbg=114 cterm=underline guifg=#2d2d2d guibg=#99cc99 gui=NONE
" neovim terminal emu colors
if has('nvim')
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#912226'
let g:terminal_color_2  = '#778900'
let g:terminal_color_3  = '#ae7b00'
let g:terminal_color_4  = '#1d2594'
let g:terminal_color_5  = '#682a9b'
let g:terminal_color_6  = '#2b6651'
let g:terminal_color_7  = '#929593'
let g:terminal_color_8  = '#666666'
let g:terminal_color_9  = '#cc6666'
let g:terminal_color_10 = '#b5bd68'
let g:terminal_color_11 = '#f0c674'
let g:terminal_color_12 = '#81a2be'
let g:terminal_color_13 = '#b294bb'
let g:terminal_color_14 = '#8abeb7'
let g:terminal_color_15 = '#ecebec'
endif

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
