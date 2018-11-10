
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Languages
Plugin 'leafgarland/typescript-vim'

" formating and syntax
Plugin 'scrooloose/syntastic'
Plugin 'Chiel92/vim-autoformat'

" Faster typing
Plugin 'mattn/emmet-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'

" UI
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" Themes
Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-airline/vim-airline-themes'

" Git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on    " required

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
set tabstop=2
set shiftwidth=2
set expandtab
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
set splitbelow
set splitright
setlocal spell spelllang=en_us

syntax enable
colorscheme jellybeans

" map arrow keys in Normal mode
map <up> :TagbarToggle<return>
map <down> :Autoformat<return>
map <left> :undo<return>
map <right> :redo<return>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

imap ;; <ESC>

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

map <space> :bNext<return>

let &colorcolumn="80,".join(range(120,999),",")

runtime macros/matchit.vim

nnoremap <return> i<return><Esc>

nnoremap <S-up> :NERDTreeToggle<return>
