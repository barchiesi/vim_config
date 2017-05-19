# barchiesi vim configuration

## Dependencies
1. Building YouCompleteMe requires cmake, clang, boost
2. python2-jedi for python competion.
3. (Ruby) Eclipse, Ruby DLTK (https://marketplace.eclipse.org/content/ruby-dltk) and eclim (installed from jar).

## Install steps
1. Clone this repository in `~/.vim`.
2. Enter `~/.vim` and run `git submodule update --init --recursive` to pull in Vundle plugin.
3. Launch vim and run `:PluginInstall` ti download plugins.
4. (Optional) For C language semantic and JavaScript support in YouCompleteMe run `~/.vim/build_ycm_extra.sh`.

## JavaScript
`~/.vim/vimjsrc` contains JavaScript specific configuration. To use it start vim via `vim -u ~/.vim/vimjsrc` or use the script located in `~/.vim/bin`.
Additional plugins must be installed with `:PluginInstall`.

## Ruby
`~/.vim/vimrubyrc` contains ruby specific configuration. To use it start vim via `vim -u ~/.vim/vimrubyrc`.
Alternatively create the following aliases `vimruby='vim -u ~/.vim/vimrubyrc'` or `gvimruby='gvim -u ~/.vim/vimrubyrc'`.
Additional plugins must be installed with `:PluginInstall`.

## Usefull functions
- `<c-y>,` to complete HTML with emmet.
- Rails: `:A` (alternate) and `:R` (related) for easy jumping
  between files, including favorites like model to schema, template to
  helper, and controller to functional test.  Commands like `:Emodel`,
  `:Eview`, `:Econtroller`, are provided to `:edit` files by type.