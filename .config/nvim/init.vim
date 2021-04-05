call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'norcalli/nvim-colorizer.lua'
Plug 'morhetz/gruvbox'
call plug#end()

" for colorizer
set termguicolors
lua require'colorizer'.setup()

colorscheme gruvbox
set encoding=utf-8
set number relativenumber
syntax enable
set noswapfile
set scrolloff=7
set backspace=indent,eol,start
set mouse=a
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :ColorizerToggle<CR>

highlight Normal guibg=none
highlight clear CursorLineNr
highlight clear StatusLine
highlight clear VertSplit
highlight clear CursorLine

let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1

noremap j h
noremap k j
noremap l k
noremap ; l
