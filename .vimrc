set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugins:
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-syntastic/syntastic'
Plugin 'sheerun/vim-polyglot'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""
""   Put non-Plugin stuff after this line  "
""""""""""""""""""""""""""""""""""""""""""""
syntax on
" au BufRead,BufNewFile *.g set filetype=antlr3
" au BufRead,BufNewFile *.g4 set filetype=antlr4

set confirm

set number
set relativenumber

set expandtab
set shiftwidth=4
set softtabstop=4
set smarttab
set smartindent
set autoindent
set backspace=indent,eol,start

set nowrap
set colorcolumn=81,101,121
highlight ColorColumn ctermbg=LightGray

set list
set listchars=tab:⇥␉,trail:␣,extends:⋯,precedes:⋯,nbsp:⎵

set showcmd
set noshowmode
set wildmenu

set hlsearch
set ignorecase
set smartcase

set visualbell

let g:syntastic_enable_signs  = 1
let g:syntastic_check_on_open = 1
