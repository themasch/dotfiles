call pathogen#infect()

filetype off
set rtp+=~/.dotfiles/vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

filetype plugin indent on
set rtp+=~/.dotfiles/vim/bundle/powerline/powerline/bindings/vim

let g:Powerline_symbols = 'fancy'

" Bubble single lines
nmap <C-Up> ddkP
nmap <C-Down> ddp
" Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]
"
wincmd p 

set shiftwidth=2
set tabstop=2
set softtabstop=2
