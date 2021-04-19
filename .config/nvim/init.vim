call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'

Plug 'PotatoesMaster/i3-vim-syntax'

Plug 'kovetskiy/sxhkd-vim'

Plug 'rust-lang/rust.vim'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'norcalli/nvim-colorizer.lua'

Plug 'morhetz/gruvbox'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

let mapleader = " "

set title
set path+=**

set nocompatible

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set showcmd
set showmode

filetype plugin on
syntax on

set nowrap

set ignorecase
set smartcase
set incsearch

set scrolloff=8

set encoding=utf-8

set nohlsearch

set mouse=a
set clipboard+=unnamedplus

set complete+=kspell
set completeopt=menuone,longest

set splitbelow splitright

set laststatus=2

" for colorizer
set termguicolors
lua require'colorizer'.setup()
colorscheme gruvbox

set number relativenumber
set noswapfile
set backspace=indent,eol,start
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

:imap ii <Esc>
:imap CapsLock <Esc>
