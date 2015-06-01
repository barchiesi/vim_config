#!/bin/bash

mkdir ~/.vim/swap
mkdir ~/.vim/undodir
cd ~/.vim/
git submodule update --init --recursive
mkdir /tmp/ycm_buildme
cd /tmp/ycm_buildme
cmake -G "Unix Makefiles" -DUSE_SYSTEM_BOOST=ON -DUSE_SYSTEM_LIBCLANG=ON . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
make -j3 ycm_support_libs
