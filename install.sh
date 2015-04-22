#!/bin/bash
#
# Installs the vim-config
#
# Installation process requires setting up symlinks and installing vundle.
# Requires that git is available.

set -e

cwd=$(pwd)

ln -s "$cwd"/.vimrc ~/.vimrc
ln -s "$cwd"/.vim ~/.vim

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
