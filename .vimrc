set nocompatible
set encoding=utf-8

call pathogen#infect()
syntax on
filetype plugin indent on

set modeline
set ruler
set backspace=indent,eol,start
set number
set numberwidth=1
set title
set mouse=a
set shiftwidth=2
set tabstop=2
set softtabstop=2
set guifont=DejaVu\ Sans\ Mono\ 8
set guioptions=
set hidden

colorscheme molokai

autocmd filetype ruby set expandtab
autocmd filetype bindzone set expandtab sw=2 ts=2 sts=2 autoindent
autocmd filetype coffee set expandtab

let g:netrw_list_hide='\.pyc$,^\.git/$,\.sw[pno]$,\.o$'
