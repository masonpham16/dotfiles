#!/bin/bash
DIR="$(cd "$(dirname "$0")" && pwd)"
ln -sf "$DIR/vimrc" ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall
