set enc=utf-8
set autoindent
set tabstop=4
set smartindent
"set hlsearch
"set t_Co=256
"syntax on
set number
syntax enable
set tags+=/usr/include/tags
"
"
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"set rtp+=~/.vim/bundle/seti.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'trusktr/seti.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'The-NERD-Tree'
Plugin 'vim-airline/vim-airline'
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
colorscheme seti
nmap <F8>       :w<CR>:Tlist<CR>
autocmd BufWritePost * :TlistUpdate
nmap <F2>       :NERDTreeToggle<CR>
set laststatus=2
