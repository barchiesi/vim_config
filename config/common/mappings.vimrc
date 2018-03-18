"""""""""""""""""""""""""""
" KEY MAPPINGS
"""""""""""""""""""""""""""

" With a map leader it's possible to do extra key combinations
let mapleader = ","
let g:mapleader = ","

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Move lines up/down with Alt+k/j
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Map F3 to save all
map <S-F2> :browse confirm e<CR>
nnoremap <F3> :wa<CR>
inoremap <F3> <esc>:wa<CR>i

" Make
nnoremap <S-F3> :wa<CR>:make<CR>
inoremap <S-F3> <esc>:wa<CR>:make<CR>

" Spell checking
nnoremap <F5> :setlocal spell! spelllang=it_IT
nnoremap <S-F5> z=
nnoremap <C-F5> ]s
nnoremap <C-S-F5> [s

" Map F6 to format
nnoremap <F6> gg=G<C-o><C-o>

" Ctrl-l to clear highlitings
nnoremap <silent> <C-l> :noh<CR><C-l>

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Map Emmet expanding to Ctrl+e
imap <C-e> <C-y>,
