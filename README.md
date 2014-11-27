# DEPENDANCIES #
Requires `ctags` for Taglist plugin. Building YouCompleteMe requires `cmake` and `clang`.

# POST CLONE INSTRUCTIONS #

1. Run `git submodule init` and `git submodule update` to pull in all pathogen plugins.
2. Create a `swap` directory inside `~/.vim`.
3. Create a link to .vimrc with `ln -s ~/.vim/vimrc ~/.vimrc`.
4. Follow build instructions for YouCompleteMe on the git repo.

# UPDATING PATHOGEN PLUGINS #

Run `git submodule foreach git pull origin master` to update all plugins.
