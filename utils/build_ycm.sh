LLVM_BIN_DIR='~/.vim/llvm'

# Build YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
rm -r /tmp/ycm_buildme
mkdir -p /tmp/ycm_buildme
cd /tmp/ycm_buildme
cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBCLANG=ON -DUSE_SYSTEM_BOOST=ON . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
cmake --build . --target ycm_core --config Release
