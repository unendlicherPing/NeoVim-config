" -------------------- "
" -     $MYVIMRC     - "
" -------------------- "

" PLUGINS
call plug#begin('~/AppData/Local/nvim/plugged')
    Plug 'arcticicestudio/nord-vim'
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
call plug#end()

" THEME "
colorscheme nord

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
