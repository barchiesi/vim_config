" Set colorscheme
colorscheme jellybeans

" Set default size for gvim
if has('gui_running')
    " Window size
    set lines=50
    set columns=90
    set gfn=Inconsolata\ 12
    " Remove menubar
    set guioptions-=m
    " Remove toolbar
    set guioptions-=T
endif

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
    set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
endif
