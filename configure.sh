#!/usr/bin/env bash

## Git load submodules 
git submodule init
git submodule update

## Set up pathogen
if [ ! -d .vim/autoload ]
then
    cp -r vim-pathogen/autoload .vim/autoload
fi


## Put the submodules into the bundle
if [ ! -d .vim/bundle/syntastic ]
then
    cp -r syntastic .vim/bundle
fi 
if [ ! -d .vim/bundle/vim-tmux-navigator ]
then
    cp -r vim-tmux-navigator .vim/bundle
fi 
if [ ! -d .vim/bundle/nerdcommenter ]
then
    cp -r nerdcommenter .vim/bundle
fi 


## Create the symlinks
if [ ! -L ~/.vim ] 
then
    ln -s $PWD/.vim ~/.vim
fi
if [ ! -L ~/.vimrc ] 
then
    ln -s $PWD/.vimrc ~/.vimrc
fi

       
