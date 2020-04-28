#!/bin/sh
mkdir ~/.config
mkdir ~/.config/nvim

ln -Fis "$PWD/init.vim" ~/.config/nvim/init.vim
