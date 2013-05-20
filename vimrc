" Load pathogen
call pathogen#infect()
call pathogen#helptags()

" Set basic options
filetype plugin indent on
syntax on

set nocompatible
set ttyfast
set backspace=indent,eol,start
set modeline
set modelines=1
set hidden

" Fancy options
set ruler
set number
set numberwidth=2
set title
set incsearch
set nowrap

" Spaces etc.
set colorcolumn=80

" Indention
set tabstop=2
set shiftwidth=2
set softtabstop=2
set copyindent
set autoindent

autocmd filetype ruby     setlocal expandtab
autocmd filetype bindzone setlocal expandtab sw=2 ts=2 sts=2 autoindent
autocmd filetype coffee   setlocal expandtab
autocmd filetype java     setlocal expandtab sw=4 ts=4 sts=4

" Colorscheme
colorscheme molokai

" NetRW
let g:netrw_list_hide='\.pyc$,^\.git/$,\.sw[pno]$,\.o$,^\.sass-cache/$,^__pycache__/$'

" NERDTree
let NERDTreeIgnore=['\.pyc$', '^\.git/$', '\.sw?$', '\.o$', '^\.sass-cache/$', '^__pycache__$', '^celerybeat-schedule$']
let NERDTreeMinimalUI=1

