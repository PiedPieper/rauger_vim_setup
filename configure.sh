#!/usr/bin/env bash



## Git load submodules 
echo "Loading Submodules"       
git submodule init
git submodule update

## Install Vim if you want to 
echo "Would you like to install vim? (y/n)"
read input
path_to_vim=$(which vim)
if [ -x "$path_to_vim" ] && [ $input == "y" ]
then
    echo "Installing Vim"
    cd vim/ 
    ./configure --enable-pythoninterp --prefix=/usr
    make
    sudo make install
    sudo cp runtime/rgb.txt $VIMRUNTIME
    cd ..
fi


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
echo "Deleting Current ~/.vim"
rm -rf ~/.vim*

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

