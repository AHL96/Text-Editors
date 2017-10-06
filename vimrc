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
call vundle#end()            " required
filetype plugin indent on    " required

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

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

syntax enable
colorscheme jellybeans

fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> :Autoformat <return> :w <return>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <esc> :Autoformat <return> :w <return>
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

""" set statusline=[%n]\ %<%F\ \ \ [%M%R%H%W%Y][%{&ff}]\ \ %=\ line:%l/%L\ col:%c\ \ \ %p%%\ \ \ @%{strftime(\"%H:%M\")}

nnoremap ; $a;<Esc>
let mapleader=","

let g:user_emmet_leader_key='C-e>'

map <space> :bNext<return>
