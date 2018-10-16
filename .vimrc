" Mapleader {{{
let mapleader="\<Space>"
" }}}

" General config {{{
augroup general_config
  autocmd!

  set relativenumber
  set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
  set backspace=indent,eol,start
  set timeoutlen=1000 ttimeoutlen=10
  set re=1
  colorscheme gruvbox
augroup END
" }}}

" fzf {{{
augroup fzf
  autocmd!
  " Open fzf with ;
  map ; :Files<CR>

  " Include hidden files in fzf search
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

  noremap <silent> <leader>/ :History<CR>
  noremap <silent> <leader>? :execute 'Ag ' . input('Ag/')<CR>
augroup END
" }}}

" NERDTree {{{
augroup nerdtree
  autocmd!

  " Open with ctl+N
  map <C-n> :NERDTreeToggle<CR>

  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup END
" }}}

" Lightline {{{
augroup lightline
  autocmd!

  " Required for Lightline but not sure why
  set laststatus=2
augroup END
" }}}

call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
call plug#end()

