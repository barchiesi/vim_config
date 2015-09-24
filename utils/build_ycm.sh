# Build YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
rm -r /tmp/ycm_buildme
mkdir -p /tmp/ycm_buildme
cd /tmp/ycm_buildme
cmake -G "Unix Makefiles" -DUSE_SYSTEM_BOOST=ON -DUSE_SYSTEM_LIBCLANG=ON . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
make -j3 ycm_support_libs
