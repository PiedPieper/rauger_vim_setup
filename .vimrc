execute pathogen#infect()

syntax enable
set autoindent
set backspace=2
set hlsearch

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab


xnoremap p pgvy

set number
set virtualedit=all
set wildmode=longest,list,full
set wildmenu

filetype plugin on

let mapleader="g"

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>


colorscheme atom-dark-256


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
