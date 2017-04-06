execute pathogen#infect()
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'https://github.com/VundleVim/Vundle.vim'
Plugin 'https://github.com/mattn/emmet-vim'
Plugin 'https://github.com/mbbill/code_complete.git'
Plugin 'https://github.com/ervandew/supertab.git'
Plugin 'https://github.com/easymotion/vim-easymotion'
Plugin 'https://github.com/Chiel92/vim-autoformat'
Plugin 'https://github.com/mbbill/undotree.git'
Plugin 'https://github.com/jiangmiao/auto-pairs.git'
Plugin 'https://github.com/vim-scripts/taglist.vim.git'
Plugin 'https://github.com/klen/python-mode.git'
Plugin 'https://github.com/tpope/vim-surround.git'
Plugin 'https://github.com/terryma/vim-multiple-cursors.git'
Plugin 'https://github.com/scrooloose/syntastic.git'
Plugin 'https://github.com/vim-scripts/FuzzyFinder.git'
Plugin 'https://github.com/myusuf3/numbers.vim.git'
Plugin 'https://github.com/vim-airline/vim-airline.git'
Plugin 'https://github.com/majutsushi/tagbar.git'
Plugin 'https://github.com/Shougo/neocomplcache.vim.git'
Plugin 'https://github.com/honza/vim-snipmate'
Plugin 'https://github.com/sidorares/node-vim-debugger.git'
Plugin 'https://github.com/moll/vim-node.git'
Plugin 'https://github.com/rust-lang/rust.vim.git'
Plugin 'https://github.com/kien/ctrlp.vim.git'


call vundle#end()
filetype plugin indent on
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
syntax enable

colorscheme base16-solarized-dark

set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set t_vb=
set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200
set shiftwidth=4
set softtabstop=4
set expandtab
set magic
set showmatch
set noerrorbells
set incsearch
set showmatch
set cursorline

map <F5> :PymodeRun<return>

"""disabling the arrow keys
nnoremap <left> :undo<return>
nnoremap <right> :redo<return>
nnoremap <up> :q<return>
nnoremap <down> :Autoformat<return>:SyntasticCheck<return>:w<return>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <C-[>:Autoformat<return>:SyntasticCheck<return>:w<return>i
inoremap <C-n> <C-w><C-w>
nnoremap <C-n> <C-w><C-w>


hi User1 guifg=#dd3333
hi User1 ctermfg=red


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:undotree_WindowLayout = 1
nnoremap <F7> :Tagbar<return>

if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

nnoremap ; $a;<Esc>
vmap f :fold<return>
vmap fc :foldclose<return>
nnoremap <return> i<return><Esc>
nnoremap <Space> i<Space><Esc>
nnoremap <del> i<del><Esc>

nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

let g:neocomplcache_enable_at_startup = 1
let mapleader=","

set nofoldenable

set selection=inclusive
set guioptions-=r
set guioptions-=L

let g:syntastic_python_flake8_exec = 'python3'
let g:syntastic_python_flake8_args = ['-m', 'flake8']
