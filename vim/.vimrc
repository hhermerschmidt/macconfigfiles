set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'

"colorschemes
Plugin 'jacoborus/tender.vim'
Plugin 'ayu-theme/ayu-vim'
Plugin 'jonathanfilip/vim-lucius'

Plugin 'tpope/vim-commentary'
Plugin 'dense-analysis/ale'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()

let g:ale_linters = {'cpp': ['cppcheck']}

set nocompatible "disable compatibility with vi
filetype on "enable file detection
filetype plugin on "enable plugins and load for detected file
filetype indent on "load an indent file for the detected file type

if (has("termguicolors"))
    set termguicolors
endif
syntax enable

colorscheme tender
let g:airline_theme = 'tender'
"let ayucolor="dark"
"colorscheme ayu
" let lucius_style="light"
" colorscheme lucius

set number "show line numbers
set cursorline "highlight current line

set tabstop=4
set shiftwidth=4
set expandtab

set listchars=space:·,tab:->,eol:¬,trail:~,extends:>,precedes:<
set list

autocmd FileType make setlocal noexpandtab

set wildmenu
set wildmode=full

set history=200
