# DEPENDENCIES #
1. Building YouCompleteMe requires cmake, clang
2. python2-jedi for python competion.

# INSTALL STEPS #
1. Clone this repository in `~/.vim`.
2. Enter `~/.vim` and run `git submodule update --init --recursive` to pull in Vundle plugin.
3. Launch vim and run `:PluginInstall`.
4. (Optional) For C language semantic and javascript support in YouCompleteMe run `~/.vim/build_ycm.sh`.

# JAVASCRIPT #
`~/.vim/vimjsrc` contains javascript specific configuration. To use it start vim via `vim -u ~/.vim/vimjsrc`.
Alternatively create the following aliases `vimjs='vim -u ~/.vim/vimjsrc'` or `gvimjs='gvim -u ~/.vim/vimjsrc'`.

For completion support, the following steps are required:
1. Enter `~/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/tern_runtime` and run `npm install --production`.
2. Enter `~/.vim/bundle/tern_for_vim/` and run `npm install`.

# RUBY #
`~/.vim/vimrubyrc` contains ruby specific configuration. To use it start vim via `vim -u ~/.vim/vimrubyrc`.
Alternatively create the following aliases `vimruby='vim -u ~/.vim/vimrubyrc'` or `gvimruby='gvim -u ~/.vim/vimrubyrc'`.
