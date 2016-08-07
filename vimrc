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

Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'

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
