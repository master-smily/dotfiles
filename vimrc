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
Plugin 'takac/vim-hardtime'
Plugin 'sheerun/vim-polyglot'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""
""   Put non-Plugin stuff after this line  "
""""""""""""""""""""""""""""""""""""""""""""
syntax on

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

let g:syntastic_check_on_open = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_enable_signs  = 1
let g:syntastic_c_config_file = ".syntastic_c_config"

let g:hardtime_default_on = 1
let g:list_of_normal_keys = ["-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = ["-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_disabled_keys = []
let g:hardtime_showmsg = 1

let g:polyglot_disabled = []

let g:airline#extensions#tabline#enabled = 1

if &term =~ "xterm.*"
    let &t_SI.="\e[5 q" "SI = INSERT mode
    let &t_SR.="\e[4 q" "SR = REPLACE mode
    let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
    autocmd VimLeave * silent !echo -e "\e[5 q"
endif
