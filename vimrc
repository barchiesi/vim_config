"""""""""""""""""""""""""""
" VUNDLE CONFIGURATION
"""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'pangloss/vim-javascript'

" Colorschemes
Plugin 'jellybeans.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"""""""""""""""""""""""""""
" GENERAL CONFIGURATION
"""""""""""""""""""""""""""

source ~/.vim/config/common.vimrc
source ~/.vim/config/appearance.vimrc
source ~/.vim/config/mappings.vimrc
source ~/.vim/config/plugin_settings.vimrc
source ~/.vim/config/plugin_mappings.vimrc
