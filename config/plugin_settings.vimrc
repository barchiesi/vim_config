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
