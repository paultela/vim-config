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

mkdir -p .vim/bundle
rm -rf .vim/bundle/Vundle.vim && git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
