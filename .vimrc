set encoding=utf-8
set updatetime=300

set exrc
set guicursor=
set nu
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set expandtab
syntax enable
filetype plugin indent on
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set colorcolumn=80

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Give more space for displaying messages
set cmdheight=2

" Vim's completion menu has some irritations by default
" coc.nvim by default overwrites completeopt settings
" set completeopt=menuone,noinsert,noselect
set shortmess+=c

" Make sure to install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
    Plug 'lervag/vimtex'
    Plug 'gruvbox-community/gruvbox'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

colorscheme gruvbox
set background=dark

if has('gui_running')
    set guifont=Monospace\ 15
endif
