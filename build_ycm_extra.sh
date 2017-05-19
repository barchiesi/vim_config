#!/bin/bash

# Compile the ycm_core library that YouCompleteMe needs
cd ~/.vim/bundle/YouCompleteMe
rm -r /tmp/ycm_buildme
mkdir -p /tmp/ycm_buildme
cd /tmp/ycm_buildme
cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBCLANG=ON -DUSE_SYSTEM_BOOST=ON . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
cmake --build . --target ycm_core --config Release

# Setup YouCompleteMe JavaScript support
if command -v npm >/dev/null; then
    cd ~/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/tern_runtime/
    npm install --production
else
    echo "Missing npm, not setting up JavaScript support for YouCompleteMe"
fi


