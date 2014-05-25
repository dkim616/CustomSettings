" Daniel's Vim Configuration File

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'

Plugin 'embear/vim-localvimrc'
Plugin 'kchmck/vim-coffee-script'
Plugin 'wincent/Command-T'
Plugin 'bitc/vim-hdevtools.git'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-scripts/a.vim'
Plugin 'Valloric/YouCompleteMe'

filetype plugin indent on

set autoread

let mapleader=","
let g:mapleader=","
nnoremap ; :

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

nmap <leader>w :w!<cr>

set so=7

set wildmenu
set wildignore=*.o,*~,*pyc,*.hi,*.png,*.tix

set backspace=indent,eol,start
set whichwrap+=<,>,h,l

set showcmd
set cmdheight=2
set laststatus=2
set shortmess=aoOW
set nohidden
set ruler
set history=700
set undolevels=700
set undoreload=-1

set ignorecase
set smartcase
set hlsearch
set incsearch

set number
set cursorline
set list
set listchars=tab:::,trail:.,extends:#,nbsp:.
set textwidth=80
set colorcolumn=+1
hi ColorColumn ctermbg=black

set lazyredraw
set magic
set showmatch
set matchpairs+=<:>
set mat=2

set noerrorbells
set novisualbell
set t_vb=
set tm=500

syntax on

if has('gui_running')
  colorscheme solarized
  set background=dark
  set guioptions-=T
  set guioptions+=e
  set t_Co=256
  set guitablabel=%M\ %t
else
  colorscheme slate
endif

set encoding=utf8
set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set softtabstop=2

set ai
set si
set nowrap

inoremap <C-U> <C-G>u<C-U>
inoremap jj <Esc>
if has('mouse')
  set mouse=a
endif

if has("autocmd")

  augroup vimrcEx
  au!

  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

endif " has("autocmd")

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')

autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

