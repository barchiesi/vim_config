"""""""""""""""""""""""""""
" COMMON CONFIGURATION
"""""""""""""""""""""""""""

" Directory locations
set directory=$VIM_DIR/swap
set undodir=$VIM_DIR/undo

" Attempt to determine the type of a file based on its name and possibly its
" contents.  Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start
"
" Show line numbering
set number

" Do not keep a backup file, use versions instead
set nobackup

" Keep 50 lines of command line history
set history=50

" Keep 8 lines below cursor
set scrolloff=8

" Don't recenter on horizontal scrolling
set sidescroll=15
set sidescrolloff=4

" Display incomplete commands
set showcmd

" Don't wrap long lines
set nowrap

" Makes search act like search in modern browsers
set incsearch

" Height of the command bar
set cmdheight=3

" Set to auto read when a file is changed from the outside
set autoread

" Always show current position
set ruler

" Always show the status line - airline in our case
set laststatus=2

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set matchtime=10

" Better command-line completion
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Python related tabstop
autocmd FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set smartindent
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Enable persistent undo
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

" Enable opposite side splitting
set splitbelow
set splitright

" Don't use Ex mode, use Q for formatting
map Q gq

" Only do this part when compiled with support for autocommands.
if has("autocmd")

    " Put these in an autocmd group, so that we can delete them easily.
    augroup vimrcEx
        autocmd!

        " For all text files set 'textwidth' to 78 characters.
        autocmd FileType text setlocal textwidth=78

        " When editing a file, always jump to the last known cursor position.
        " Don't do it when the position is invalid or when inside an event handler
        " (happens when dropping a file on gvim).
        " Also don't do it when the mark is in the first line, that is the default
        " position when opening a file.
        autocmd BufReadPost *
                    \ if line("'\"") > 1 && line("'\"") <= line("$") |
                    \   exe "normal! g`\"" |
                    \ endif

    augroup END

endif " has("autocmd")
