#!/bin/bash

cd vim
export VIM_SRC=`pwd`
cd
ln -ns $VIM_SRC .vim
ln -ns $VIM_SRC/vimrc.vim .vimrc
