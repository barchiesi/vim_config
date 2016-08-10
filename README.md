# DEPENDENCIES #
1. Building YouCompleteMe requires cmake, clang
2. python2-jedi for python competion.

# INSTALL STEPS #
1. Clone this repository in `~/.vim`.
2. Enter `~/.vim` and run `git submodule update --init --recursive` to pull in Vundle plugin.
3. Launch vim and run `:PluginInstall`.
4. (Optional) For C language semantic and javascript support in YouCompleteMe run `~/.vim/build_ycm.sh`.
