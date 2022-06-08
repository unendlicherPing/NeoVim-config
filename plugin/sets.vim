" SETS "
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent

set relativenumber
set nu

set smartcase
set ignorecase
set nohlsearch
set incsearch

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set exrc
set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20

set hidden
set noerrorbells
set nowrap
set termguicolors
set scrolloff=8
set cmdheight=2
set signcolumn=yes
set colorcolumn=80
set encoding=UTF-8

set guifont=CaskaydiaCove_Nerd_Font:h11
set nocompatible
set path+=**
set wildmenu

syntax enable
filetype plugin on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


let g:rustfmt_autosave = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


