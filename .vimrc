filetype plugin on
set incsearch
set ignorecase
set wildmenu

set gcr=a:block-blinkon0

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m
set guioptions-=T

set laststatus=2

set ruler

set number

set cursorline
set cursorcolumn

set hlsearch

syntax enable
syntax on
filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set showcmd
let mapleader=","
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>. :vsplit 
nnoremap <Leader>` :noh<CR>
nnoremap z :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
nnoremap 9 $
nnoremap d9 d$
nnoremap <Leader>t :TlistToggle<CR>
nnoremap <TAB> <C-w>w
vnoremap <TAB> <C-w>
nnoremap <space> @=((foldclosed(line('.')<0)?'zc':'zo'))<CR>
"vundle setting
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'majutsushi/tagbar'
Plugin 'ntpeters/vim-better-whitespace'
call vundle#end()
filetype plugin indent on
set background=dark
"colorscheme solarized
colorscheme molokai
