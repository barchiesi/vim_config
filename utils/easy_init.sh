#!/bin/bash

mkdir -p ~/.vim/swap
mkdir -p ~/.vim/undodir
cd ~/.vim/
git submodule update --init --recursive
sh ~/.vim/utils/build_ycm.sh
