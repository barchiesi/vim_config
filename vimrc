"""""""""""""""""""""""""""
" MUST CONFIGURATION
"""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
let win_shell = (has('win32') || has('win64')) && &shellcmdflag =~ '/'
let $VIM_DIR = win_shell ? '$HOME/vimfiles' : '$HOME/.vim'

"""""""""""""""""""""""""""
" VUNDLE CONFIGURATION
"""""""""""""""""""""""""""

filetype off                  " required

" Set the runtime path to include Vundle and initialize
let &runtimepath .= ',' . expand($VIM_DIR . '/bundle/Vundle.vim')
call vundle#rc(expand($VIM_DIR . '/bundle'))

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Common plugins
source $VIM_DIR/config/common/plugins.vimrc

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"""""""""""""""""""""""""""
" GENERAL CONFIGURATION
"""""""""""""""""""""""""""

" Common configuration
source $VIM_DIR/config/common/settings.vimrc
source $VIM_DIR/config/common/appearance.vimrc
source $VIM_DIR/config/common/mappings.vimrc
source $VIM_DIR/config/common/plugin_settings.vimrc
source $VIM_DIR/config/common/plugin_mappings.vimrc
