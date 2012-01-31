set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab
set autoindent

set noswapfile
set nobackup
set nowritebackup

set showmatch
set mat=2

set vb t_vb= "dont beep, flash instead

set incsearch

set history=100

set ruler "always show current position

set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,300 bd!<cr>

" Use the arrows to something usefull
map <right> :bn<cr>
map <left> :bp<cr>

colorscheme ir_black

:filetype plugin on 
filetype plugin indent on


