# DEPENDENCIES #
Requires `ctags` for Taglist plugin. Building YouCompleteMe requires `cmake` and `clang`.

# INSTALL STEPS #
1. Clone this repository in `~/.vim`.
2. Enter `~/.vim` and run `git submodule init` and `git submodule update` to pull in all pathogen plugins.
3. Create a `swap` directory inside `~/.vim`.
4. Enter `~/.vim/bundle/YouCompleteMe` and run `git submodule update --init --recursive` to download YouCompleteMes dependencies.
5. Follow build instructions for YouCompleteMe on the git repo.

# INSTALLED PLUGINS #
1. Pathogen
2. CtrlP
3. delimitMate
4. NERD Commenter
5. NERD Tree
6. Better Rainbow Parentheses
7. Sparkup
8. Syntastic
9. Tagbar
10. UltiSnips
11. Indent Guides
12. snipMate & UltiSnip Snippets
13. Trailing Whitespace
14. YouCompleteMe

# INSTALLED COLORSCHEMES #
1. Bad Wolf
2. atom-dark

# INSTALLED SYNTAX FILES #
1. less

# UPDATING PATHOGEN PLUGINS #
Run `git submodule foreach git pull origin master` to update all installed plugins.
