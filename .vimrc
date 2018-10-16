set relativenumber
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set backspace=indent,eol,start

call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
call plug#end()

" fzf {{{
augroup fzf
  autocmd!
  " Open fzf with ;
  map ; :Files<CR>

  " Include hidden files in fzf search
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
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

" Vim Colorschemes
colorscheme gruvbox
