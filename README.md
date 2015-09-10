# DEPENDENCIES #
Requires `ctags` for Taglist plugin. Building YouCompleteMe requires `cmake`, `clang`, `python2-jedi` for python competion.

# INSTALL STEPS #
1. Clone this repository in `~/.vim`.
2. Enter `~/.vim` and run `git submodule update --init --recursive` to pull in all pathogen plugins.
3. Create `swap` and `undodir` directories inside `~/.vim`.
4. Follow build instructions for YouCompleteMe on the git repo.

or run `easy_init.sh` that should do all of the above.

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
15. Minimap
16. vim-javascript
17. Colorizer
18. vim-airline
19. vimtips-fortune

# INSTALLED COLORSCHEMES #
1. Bad Wolf
2. atom-dark
3. jellybeans
4. solarized

# INSTALLED SYNTAX FILES #
1. less
2. i3-vim-syntax

# UPDATING PATHOGEN PLUGINS #
Run `git submodule foreach git pull origin master` to update all installed plugins.
