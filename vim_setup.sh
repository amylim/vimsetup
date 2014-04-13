#!/bin/bash

curl https://raw.githubusercontent.com/amylim/vimsetup/master/.vimrc > ~/.vimrc

# solarized
if [ ! -d ~/.vim/colors/ ] 
then
    echo "vim colors dir doesn't exist"
    mkdir -p ~/.vim/colors/
fi
curl https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim > ~/.vim/colors/solarized.vim
