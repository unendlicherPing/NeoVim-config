" -------------------- "
" -     $MYVIMRC     - "
" -------------------- "

" PLUGINS
call plug#begin('~/AppData/Local/nvim/plugged')
    Plug 'morhetz/gruvbox'
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'rust-lang/rust.vim'
    Plug 'cespare/vim-toml'
    Plug 'vim-syntastic/syntastic'
call plug#end()

" THEME "
colorscheme gruvbox

" LEADER "
let mapleader = " "

" MAPS "
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" AUTOCOMMANDS "
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup UNENDLICHER_PING
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
