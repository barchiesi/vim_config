#!/bin/bash

cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
mkdir /tmp/ycm_buildme
cd /tmp/ycm_buildme
cmake -G "Unix Makefiles" -DUSE_SYSTEM_BOOST=ON -DUSE_SYSTEM_LIBCLANG=ON . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
make ycm_support_libs
mkdir ~/.vim/swap
mkdir ~/.vim/undodir
