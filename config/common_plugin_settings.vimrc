"""""""""""""""""""""""""""
" NERD Tree
"""""""""""""""""""""""""""

" Hide certain files
let NERDTreeIgnore=['.o$[[file]]']


"""""""""""""""""""""""""""
" NERD Commenter
"""""""""""""""""""""""""""

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1


"""""""""""""""""""""""""""
" vim-airline
"""""""""""""""""""""""""""

let g:airline_powerline_fonts = 1


"""""""""""""""""""""""""""
" Better Rainbow Parentheses
"""""""""""""""""""""""""""

" Always on
autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces


"""""""""""""""""""""""""""
" Indent Guides
"""""""""""""""""""""""""""

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'python']
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 4
let g:indent_guides_color_change_percent = 2


"""""""""""""""""""""""""""
" CtrlP
"""""""""""""""""""""""""""

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|env\|node_modules$\|bower_components$|dist$',
  \ 'file': '\.exe$\|\.so$\|\.dat|\.class$'
  \ }


"""""""""""""""""""""""""""
" Syntastic
"""""""""""""""""""""""""""

let g:syntastic_python_flake8_args = "--ignore=E501"
let g:syntastic_python_checker_args='--ignore=E501'


"""""""""""""""""""""""""""
" YouCompleteMe
"""""""""""""""""""""""""""

let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_global_conf.py'
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_min_num_of_chars_for_completion = 99 " Disable identifier completion
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
let g:ycm_autoclose_preview_window_after_completion = 1
let g:EclimCompletionMethod = 'omnifunc'


"""""""""""""""""""""""""""
" grep.vim
"""""""""""""""""""""""""""
let Grep_Skip_Dirs = '.git'
