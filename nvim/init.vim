" init vim-plug plugin manager
call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")
  Plug 'moll/vim-bbye'
  Plug 'simeji/winresizer'
  Plug 'chrisbra/csv.vim'
call plug#end()

" configure csv plugin
augroup filetype_csv
  autocmd!

  autocmd BufRead,BufWritePost *.csv :%ArrangeColumn!
  autocmd BufWritePre *.csv :%UnArrangeColumn
augroup End

" Some defaults
syntax on
set hlsearch   " highlight all results
set ignorecase " ignore case in search
set incsearch  " show search results as you type
set clipboard+=unnamedplus
set noswapfile

" save undo-trees in files
set undofile
set undodir=$HOME/.config/nvim/undo
set undolevels=10000
set undoreload=10000

" set line number
set number

" use 2 spaces instead of tab ()
" copy indent from current line when starting a new line
set autoindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" set keystroke leader key
nnoremap <space> <nop>
let mapleader = "\<space>"

nnoremap <leader>bn :bn<cr> ;buffer next
nnoremap <leader>bd :Bdelete<cr> ;buffer delete
nnoremap <leader>tn gt ;new tab
nnoremap <c-w>h <c-w>s

" Type j k instead of <ESC> 
inoremap jk <ESC>
