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

" Common plugins
source ~/.vim/config/common/plugins.vimrc

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"""""""""""""""""""""""""""
" GENERAL CONFIGURATION
"""""""""""""""""""""""""""

" Common configuration
source ~/.vim/config/common/settings.vimrc
source ~/.vim/config/common/appearance.vimrc
source ~/.vim/config/common/mappings.vimrc
source ~/.vim/config/common/plugin_settings.vimrc
source ~/.vim/config/common/plugin_mappings.vimrc
