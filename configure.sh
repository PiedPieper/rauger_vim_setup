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
install_dir=.vim/bundle
mkdir -p $install_dir
declare -a packages=("vim-erlang-runtime" "vim-erlang-tags" "syntastic" "vim-tmux-navigator" "nerdcommenter")

for i in "${packages[@]}"
do 
    echo "Installing $i"
    cp -r $i $install_dir/
done



declare -a new_links=(".vim" ".vimrc" ".tmux.conf" ".bash_profile")
for i in "${new_links[@]}"
do                   
    if [[ -z "${i// }" ]] ; ## Make sure there is something in the string so we dont delete our root directory
    then
        echo "Deleting old $i and linking new..."
        rm -rf ~/${i}             ## remove current location
        ln -s $PWD/${i} ~/${i}    ## link our file/dir to the new location
        echo "$i linkage complete"
    fi
done
    
echo "Done"

