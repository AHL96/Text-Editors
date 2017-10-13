set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'Chiel92/vim-autoformat'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'leafgarland/typescript-vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
call vundle#end()            " required
filetype plugin indent on    " required

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

set guifont=Source\ Code\ Pro:h12

set number
set autoread
set wildmenu
set ruler
set smartcase
set hlsearch
set showmatch
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set tabstop=4
set shiftwidth=4
set expandtab
"""set colorcolumn=80
set showcmd
set cursorline
set guioptions-=T
set autoindent
set incsearch
set laststatus=2
set backspace=2
set relativenumber!
set wrap
set smartindent
set smarttab
set foldmethod=indent
set foldnestmax=3
set nofoldenable
set scrolloff=10
set sidescrolloff=15
set sidescroll=1
set noswapfile
set mouse=a

syntax enable
colorscheme jellybeans

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> :Autoformat<return>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

let g:netrw_banner = 0
let g:netrw_liststyle = 3

let python_highlight_all = 1

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap ; $a;<Esc>
let mapleader=","

map <space> :w<return>:bNext<return>

nmap <F8> :TagbarToggle<CR>
