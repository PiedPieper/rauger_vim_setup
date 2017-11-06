execute pathogen#infect()
syntax enable
set backspace=2
set hlsearch
set expandtab
set tabstop=4
set runtimepath+=~/.vim_runtime
set number
set virtualedit=all
set shell=/bin/bash\ --rcfile\ ~/.bash_profile\ -i
set wildmode=longest,list,full
set wildmenu

filetype plugin on

let mapleader="g"

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>


colorscheme atom-dark-256
