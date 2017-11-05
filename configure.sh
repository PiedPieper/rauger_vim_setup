#!/usr/bin/env bash



## Git load submodules 
echo "Loading Submodules\n"       
git submodule init
git submodule update

## Set up pathogen
if [ ! -d .vim/autoload ]
then
    echo "Installing Pathogen\n"       
    cp -r vim-pathogen/autoload .vim/autoload
fi


## Put the submodules into the bundle
if [ ! -d .vim/bundle/syntastic ]
then
    echo "Installing Syntastic\n"       
    cp -r syntastic .vim/bundle
fi 
if [ ! -d .vim/bundle/vim-tmux-navigator ]
then
    echo "Installing Tmux-Navigator\n"       
    cp -r vim-tmux-navigator .vim/bundle
fi 
if [ ! -d .vim/bundle/nerdcommenter ]
then
    echo "Installing NerdCommenter\n"       
    cp -r nerdcommenter .vim/bundle
fi 


## Create the symlinks
echo "Creating SymLinks\n"
if [ 
if [ ! -L ~/.vim && ! -f ~/.vim ] 
then
    ln -s $PWD/.vim ~/.vim
else 
    rm -rf ~/.vim
    ln -s $PWD/.vim ~/.vim
fi
if [ ! -L ~/.vimrc && ! -f ~/.vimrc ] 
then
    ln -s $PWD/.vimrc ~/.vimrc
else 
    rm -rf ~/.vimrc
    ln -s $PWD/.vimrc ~/.vimrc
fi
echo "Done\n"
