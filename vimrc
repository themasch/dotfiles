
set nocompatible
filetype off
syntax on

set runtimepath+=~/.dotfiles/vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.dotfiles/vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'bling/vim-airline'
call neobundle#end()

NeoBundleCheck 

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
