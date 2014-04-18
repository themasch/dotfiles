
set nocompatible
filetype off
set rtp+=~/.dotfiles/vim/bundle/vundle/
call vundle#rc()
syntax on

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/syntastic'
Bundle 'bling/vim-airline'
set laststatus=2
let g:airline_section_c='%{fugitive#statusline()}'

filetype plugin indent on

" Bubble single lines
nnoremap <C-Up> ddkP
nnoremap <C-Down> ddp
" Bubble multiple lines
vnoremap <C-Up> xkP`[V`]
vnoremap <C-Down> xp`[V`]


" safe für blöde
cnoremap w!! w !sudo tee % >/dev/null

set shiftwidth=2
set tabstop=2
set softtabstop=2

" space für auf- UND zuklappen
nnoremap <space> za

" we <3 utf8
set encoding=utf-8
set fileencoding=utf-8

set backupdir=~/tmp
set directory=~/tmp

set background=dark
colorscheme solarized
