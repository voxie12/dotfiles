call plug#begin('~/.vim/plugged')

"Plug 'bling/vim-airline'

Plug 'PotatoesMaster/i3-vim-syntax'

Plug 'kovetskiy/sxhkd-vim'

Plug 'rust-lang/rust.vim'

"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'norcalli/nvim-colorizer.lua'

Plug 'vimwiki/vimwiki'

Plug 'morhetz/gruvbox'

Plug 'mhinz/vim-startify'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'jiangmiao/auto-pairs'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'itchyny/lightline.vim'

Plug 'n1ghtmare/noirblaze-vim'

call plug#end()


let g:startify_custom_header = [
\ '   _  _  _  _  ____  __  __ ',
\ '  ( \( )( \/ )(_  _)(  \/  )',
\ '   )  (  \  /  _)(_  )    ( ',
\ '  (_)\_)  \/  (____)(_/\/\_)',
\ ]

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'c': '~/.config/bspwm/bspwmrc' },
            \ { 'v': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ ]

let mapleader = " "

set title
set path+=**

set nocompatible

set tabstop=4 softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set showtabline=2
set noshowmode

set showcmd
set pumheight=10
"set showmode

filetype plugin on
syntax enable

set nowrap
set ruler
set cmdheight=2
set cursorline


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

set splitbelow 
set splitright
set t_Co=256

set laststatus=2

" for colorizer
set termguicolors
lua require'colorizer'.setup()

" colorscheme
colorscheme gruvbox
" set background=dark

" status bar
let g:lightline = { 'colorscheme': 'gruvbox' }

set number relativenumber
set noswapfile
set nobackup
set nowritebackup
set updatetime=300
set timeoutlen=500
set backspace=indent,eol,start
set autoindent
set fileformat=unix

nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :ColorizerToggle<CR>
nmap <F4> :Files<CR>

highlight Normal guibg=none
highlight clear CursorLineNr
highlight clear StatusLine
highlight clear VertSplit
" highlight clear CursorLine

let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1

noremap j h
noremap k j
noremap l k
noremap ; l

:imap ii <Esc>
:imap CapsLock <Esc>
