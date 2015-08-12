" Enable pathogen
execute pathogen#infect()

"""""""""""""""""""""""""""
" GENERAL CONFIGURATION
"""""""""""""""""""""""""""

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
    finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents.  Use this to allow intelligent auto-indenting for each filetype,
"and for plugins that are filetype specific.
filetype indent plugin on

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start
"
" Show line numbering
set nu

" Do not keep a backup file, use versions instead
set nobackup

" Keep 50 lines of command line history
set history=50

" Keep 8 lines below cursor
set scrolloff=8

" Display incomplete commands
set showcmd

" Don't wrap long lines
set nowrap

" Makes search act like search in modern browsers
set incsearch

" Height of the command bar
set cmdheight=2

" Set to auto read when a file is changed from the outside
set autoread

" Always show current position
set ruler

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Better command-line completion
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Save .swp in ~/.vim/swap/ Folder must exist
set directory=~/.vim/swap

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
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Enable persistent undo
set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

" Enable opposite side splitting
set splitbelow
set splitright

" Set colorscheme
set background=dark
colorscheme solarized

" Set default size for gvim
if has('gui_running')
    " Window size
    set lines=50
    set columns=90
    set gfn=Inconsolata\ Medium\ 13
    set laststatus=2
    " Remove menubar
    set guioptions-=m
    " Remove toolbar
    set guioptions-=T
endif

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

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

" Only do this part when compiled with support for autocommands.
if has("autocmd")

    " Put these in an autocmd group, so that we can delete them easily.
    augroup vimrcEx
        au!

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

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
                \ | wincmd p | diffthis
endif


"""""""""""""""""""""""""""
" PLUGIN CONFIGURATION
"""""""""""""""""""""""""""

" Rainbow parenthesis
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" NERDTree
let NERDTreeIgnore = ['\.pyc$']

" CtrlP
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|env\|node_modules$\|bower_components$|dist$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }

" indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'python']
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 4
let g:indent_guides_color_change_percent = 2

" syntastic
let g:syntastic_python_flake8_args = "--ignore=E501"
let g:syntastic_python_checker_args='--ignore=E501'

" Youcompleteme
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_global_conf.py'
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_min_num_of_chars_for_completion = 99 " Disable identifier completion
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
let g:ycm_autoclose_preview_window_after_completion = 1

" vim-airline
let g:airline_powerline_fonts = 1


"""""""""""""""""""""""""""
" KEY CONFIGURATION
"""""""""""""""""""""""""""

" Move lines up/down with Alt+k/j
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" With a map leader it's possible to do extra key combinations
let mapleader = ","
let g:mapleader = ","

" Map F2 NerdTreeToggle and TagbarToggle
map <F2> :NERDTreeToggle<CR>
map <S-F2> :TagbarToggle<CR>

" Map F3 to save all
map <F3> :wa<CR>

" Spell checking
nmap <F5> :setlocal spell! spelllang=it_IT
nmap <S-F5> z=
nmap <C-F5> ]s
nmap <C-S-F5> [s

" Map F6 to format
nnoremap <F6> gg=G<C-o><C-o>

" Map F7 to comment/uncomment
map <F7> <leader>c<space>

" Ctrl-l to clear highlitings
nnoremap <silent> <C-l> :noh<CR><C-l>

" Map gb to CtrlPBuffer switcher
nnoremap gb :CtrlPBuffer<CR>

" UltiSnips shortcuts
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file
