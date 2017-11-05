#!/usr/bin/env bash



## Git load submodules 
echo "Loading Submodules"       
git submodule init
git submodule update

## Set up pathogen
if [ ! -d .vim/autoload ]
then
    echo "Installing Pathogen"       
    cp -r vim-pathogen/autoload .vim/autoload
fi


## Put the submodules into the bundle
if [ ! -d .vim/bundle/syntastic ]
then
    echo "Installing Syntastic"       
    cp -r syntastic .vim/bundle
fi 
if [ ! -d .vim/bundle/vim-tmux-navigator ]
then
    echo "Installing Tmux-Navigator"       
    cp -r vim-tmux-navigator .vim/bundle
fi 
if [ ! -d .vim/bundle/nerdcommenter ]
then
    echo "Installing NerdCommenter"       
    cp -r nerdcommenter .vim/bundle
fi 


## Create the symlinks
echo "Creating SymLinks"
if [ ! -L ~/.vim ] && [ ! -f ~/.vim ] 
then
    ln -s $PWD/.vim ~/.vim
else 
    rm -rf ~/.vim
    ln -s $PWD/.vim ~/.vim
fi
if [ ! -L ~/.vimrc ] && [ ! -f ~/.vimrc ]
then
    ln -s $PWD/.vimrc ~/.vimrc
else 
    rm -rf ~/.vimrc
    ln -s $PWD/.vimrc ~/.vimrc
fi
if [ ! -L ~/.tmux.conf ] && [ ! -f ~/.tmux.conf ]
then
    ln -s $PWD/.tmux.conf ~/.tmux.conf
else 
    rm -rf ~/.tmux.conf
    ln -s $PWD/.tmux.conf ~/.tmux.conf
fi
if [ ! -L ~/.bash_profile ] && [ ! -f ~/.bash_profile ]
then
    ln -s $PWD/.bash_profile  ~/.bash_profile
else 
    rm -rf ~/.bash_profile 
    ln -s $PWD/.bash_profile ~/.bash_profile
fi 
    
echo "Done"

