set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
"call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'


Bundle'scrooloose/nerdtree'
let NERDTreeWinPos='right'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>


Bundle'majutsushi/tagbar'
let g:tagbar_ctags_bin='ctags'
let g:tagbar_width=30
map <F3> :Tagbar<CR>



Bundle 'tomasr/molokai'
colorscheme molokai
"set t_Co=256
set background=light

Bundle 'bling/vim-airline'

Bundle 'kien/ctrlp.vim'
"let g:ctrlp_working_path_mode='rw'
let g:ctrlp_working_path_mode='rw'
let g:ctrlp_show_hidden=1
let g:ctrlp_max_files=0

"Bundle 'Valloric/YouCompleteMe'

Bundle 'davidhalter/jedi-vim'

Bundle 'scrooloose/syntastic'

set ts=4
set nu
set laststatus=2
set softtabstop=4
set nobackup
set nowrapscan
set backupcopy=yes
set incsearch
set hlsearch
set autoindent
syntax on
"set autochdir


let mapleader=","


nnoremap <Leader>h  <C-W>h
nnoremap <Leader>j  <C-W>j
nnoremap <Leader>k  <C-W>k
nnoremap <Leader>l  <C-W>l

nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>, :/

nnoremap \ :
nnoremap <Leader>/ :ls<CR>
nnoremap <F9> :bp<CR>
nnoremap <F10> :bn<CR>
nnoremap <Leader>. :b 
nnoremap <Leader>' :badd 
nnoremap <Leader>; :bdelete
nnoremap <Leader>a :vsp<CR>
nnoremap <Leader>b :sp<CR>
"python
nnoremap<F5> :call CompileRunPython()<CR>
func! CompileRunPython()
		exec "w"
		if &filetype == 'python'
				exec "!time python2.7 %"
		endif
endfunc
