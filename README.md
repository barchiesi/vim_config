# barchiesi vim configuration

## Dependencies
1. Building YouCompleteMe requires cmake, clang, boost
2. (Python) python2-jedi for competion.
3. (Javascript) npm for installing tern completion.
4. (Ruby) Eclipse, Ruby DLTK (https://marketplace.eclipse.org/content/ruby-dltk) and eclim (installed from jar).
5. Default font is Inconsolata, install it or change in `config/common/appearance.vimrc`.

## Install steps
1. Clone this repository in `~/.vim`.
2. Enter `~/.vim` and run `git submodule update --init --recursive` to pull in Vundle plugin.
3. Launch vim and run `:PluginInstall` to download plugins.
4. (Optional) For C language semantic and JavaScript support in YouCompleteMe run `~/.vim/build_ycm_extra.sh`.

## JavaScript/HTML/CSS
`~/.vim/vimwebrc` contains JavaScript specific configuration. To use it start vim via `vim -u ~/.vim/vimwebrc` or use the script located in `~/.vim/bin`.
Additional plugins must be installed with `:PluginInstall`.

## Ruby
`~/.vim/vimrubyrc` contains ruby specific configuration. To use it start vim via `vim -u ~/.vim/vimrubyrc` or use the script located in `~/.vim/bin`.
Additional plugins must be installed with `:PluginInstall`.

## Useful functions
- `<C-e>` or `<C-y>,` to complete HTML with emmet.
- Rails: `:A` (alternate) and `:R` (related) for easy jumping between files, including favorites like model to schema, template to helper, and controller to functional test.  Commands like `:Emodel`, `:Eview`, `:Econtroller`, are provided to `:edit` files by type.
- Fugitive: `:Gstatus` to view `git status`, `-` to stage/unstage files; `:Gblame` to view `git blame` on current file; `:Gcommit` to commit.
- UltiSnips: `<c-j>` to expand a snippet.
