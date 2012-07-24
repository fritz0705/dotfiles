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
set sw=2
set ts=2
set sts=2
set guifont=DejaVu\ Sans\ Mono\ 8
set guioptions=
set hidden

colorscheme mustang

autocmd filetype ruby set expandtab
autocmd filetype bindzone set expandtab sw=2 ts=2 sts=2 autoindent
