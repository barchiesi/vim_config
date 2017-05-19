# DEPENDENCIES #
1. Building YouCompleteMe requires cmake, clang, boost
2. python2-jedi for python competion.
3. (Ruby) Eclipse, Ruby DLTK (https://marketplace.eclipse.org/content/ruby-dltk) and eclim (installed from jar).

# INSTALL STEPS #
1. Clone this repository in `~/.vim`.
2. Enter `~/.vim` and run `git submodule update --init --recursive` to pull in Vundle plugin.
3. Launch vim and run `:PluginInstall`.
4. (Optional) For C language semantic and javascript support in YouCompleteMe run `~/.vim/build_ycm_extra.sh`.

# JAVASCRIPT #
`~/.vim/vimjsrc` contains javascript specific configuration. To use it start vim via `vim -u ~/.vim/vimjsrc`.
Alternatively create the following aliases `vimjs='vim -u ~/.vim/vimjsrc'` or `gvimjs='gvim -u ~/.vim/vimjsrc'`.

# RUBY #
`~/.vim/vimrubyrc` contains ruby specific configuration. To use it start vim via `vim -u ~/.vim/vimrubyrc`.
Alternatively create the following aliases `vimruby='vim -u ~/.vim/vimrubyrc'` or `gvimruby='gvim -u ~/.vim/vimrubyrc'`.
