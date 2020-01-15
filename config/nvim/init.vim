""" dmccrevan's vim
""" Vim-Plug
call plug#begin()
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'tpope/vim-fugitive'
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'fatih/vim-go', {'do': 'GoUpdateBinaries'}
call plug#end()

""" Disable go version error
let g:go_version_warning = 0

""" Enable gopls lang server
let g:go_def_mode = 'gopls'
let g:go_info_mode = 'gopls'

""" Coloring
syntax on

filetype plugin indent on
set tabstop=4 shiftwidth=4 autoindent
set incsearch hlsearch
set ruler
set statusline +=\ %{fugitive#statusline()}
set rulerformat=%l\:%c
set list listchars=trail:»,tab:»-
set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set number
set title

""" Key mappings
imap jj <Esc>
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-f> :NERDTreeFocus<CR>
imap cc <C-x><C-o>
