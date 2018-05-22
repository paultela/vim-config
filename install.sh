#!/bin/bash
#
# Installs the vim-config
#
# Installation process requires setting up symlinks and installing vundle.
# Requires that git is available.

set -euo pipefail
IFS=$'\n\t'

cwd=$(pwd)

rm -f ~/.vimrc && ln -s "$cwd"/.vimrc ~/.vimrc
rm -f ~/.gvimrc && ln -s "$cwd"/.gvimrc ~/.gvimrc
rm -f ~/.vim && ln -s "$cwd"/.vim ~/.vim

curl -fLo .vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall
