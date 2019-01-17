" Mapleader {{{
let mapleader="\<Space>"
" }}}

" General config {{{
augroup general_config
  autocmd!

  set relativenumber
  set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
  set autoindent
  set backspace=indent,eol,start
  set timeoutlen=1000 ttimeoutlen=10
  set re=1
  set clipboard^=unnamed
  set hlsearch

  noremap <silent> <leader>c :noh<CR>

  colorscheme gruvbox
augroup END
" }}}

" fzf {{{
augroup fzf
  autocmd!
  " Open fzf with ;
  map ; :Files<CR>

  " Include hidden files in fzf search
  let $FZF_DEFAULT_COMMAND="find . -path '*/\.*' -type d -prune -o -type f -print -o -type l -print 2> /dev/null | sed s/^..//"

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
"
" vim-fugitive {{{
augroup fugitive
  autocmd!

  nnoremap <space>gs :Gstatus<CR>
  nnoremap <space>gd :Gdiff<CR>
  nnoremap <space>blame :Gblame<CR>
  nnoremap <space>gb :Git branch<Space>
  nnoremap <space>go :Git checkout<Space>
augroup END
" }}}

call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
Plug 'wincent/terminus'
Plug 'farmergreg/vim-lastplace'
Plug 'ntpeters/vim-better-whitespace'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'easymotion/vim-easymotion'
Plug 'fatih/vim-go'
Plug 'brooth/far.vim'
call plug#end()

