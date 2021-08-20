set exrc
set guicursor=

set nu
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set expandtab

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set colorcolumn=80
set signcolumn=yes

" Give more space for displaying messages
set cmdheight=2

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
    Plug 'lervag/vimtex'
"    Plug 'sheerun/vim-polyglot'
    Plug 'gruvbox-community/gruvbox'
" MUST INSTALL ALL DEPENDENCIES FOR YCM, CHECK THE DOCUMENTATION
    Plug 'ycm-core/YouCompleteMe'
call plug#end()

colorscheme gruvbox
set background=dark

if has('gui_running')
    set guifont=Monospace\ 14
endif
