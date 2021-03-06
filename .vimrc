" Mapleader {{{
let mapleader="\<Space>"
" }}}

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/powerline'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-fugitive'
Plug 'wincent/terminus'
Plug 'farmergreg/vim-lastplace'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'easymotion/vim-easymotion'
Plug 'fatih/vim-go'
Plug 'christoomey/vim-tmux-navigator'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
call plug#end()

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
  set ignorecase
  set smartcase
  set noshowmode

  noremap <leader><leader>c :noh<CR>

  colorscheme solarized8_dark
augroup END
" }}}

" ALE {{{
augroup ALE
  autocmd!
  let g:ale_fixers = ['prettier-eslint']
  let g:ale_fix_on_save = 1
augroup END
" }}}
"
" fzf {{{
augroup fzf
  autocmd!

  let $FZF_DEFAULT_COMMAND = 'ag -g ""'
  nmap <leader>f :FZF<CR>
  nmap ; :History<CR>
augroup END
" }}}

" NERDTree {{{
augroup nerdtree
  autocmd!
  let NERDTreeShowHidden=1
  let NERDTreeIgnore = ['\.swp$', '\.DS_Store$']

  " Open with ctl+N
  map <C-n> :NERDTreeToggle<CR>

  " [s]how file in tree
  nmap <leader>s :NERDTreeFind<CR>

  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup END
" }}}

" Airline {{{
augroup airline_config
  autocmd!
  let g:airline_theme='solarized'
  let g:airline_solarized_bg='dark'
  let g:airline_powerline_fonts = 1
  let g:airline_enable_syntastic = 1
  let g:airline_skip_empty_sections = 1
  "let g:airline#extensions#tabline#buffer_nr_format = '%s '
  "let g:airline#extensions#tabline#buffer_nr_show = 1
  "let g:airline#extensions#tabline#enabled = 1
  "let g:airline#extensions#tabline#fnamecollapse = 0
  "let g:airline#extensions#tabline#fnamemod = ':t'
augroup END
" }}}

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
"
" ultisnips {{{
augroup ultisnips
  autocmd!

  let g:UltiSnipsExpandTrigger="<C-j>"
augroup END
" }}}
