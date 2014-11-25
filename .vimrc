set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'

Plugin 'SirVer/ultisnips'

" Plugin 'Valloric/YouCompleteMe'

" Plugin 'scrooloose/syntastic'
Plugin 'chriskempson/base16-vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
syntax enable
filetype plugin indent on

set autoindent
set copyindent

set hidden

set backspace=indent,eol,start
set complete-=i

set tabstop=4
set shiftwidth=4
set shiftround
set smarttab
set expandtab

set ignorecase
set incsearch
" set hlsearch
set smartcase
" Use <C-L> to clear the highlighting of :set hlsearch.
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

nnoremap n nzz
nnoremap N Nzz

set laststatus=2
set ruler
set showcmd
set wildmode=longest,list
set wildmenu

set showmatch
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set number
set title

" set nowrap
set scrolloff=4
set sidescrolloff=5
set display+=lastline

set nrformats-=octal

set ttimeout
set ttimeoutlen=100

set autoread
set fileformats+=mac

set undofile
set undodir=~/.vim/undodir

set history=1000
set tabpagemax=50

set viminfo^=!

" set sessionoptions-=options

set t_Co=256
colorscheme desert

runtime! macros/matchit.vim

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

cnoremap <c-n> <down>
cnoremap <c-p> <up>

set pastetoggle=<F2>
set mouse=a

let mapleader=" "

" inoremap <C-U> <C-G>u<C-U>

nnoremap <silent> <Leader>l :set list!<CR>
nnoremap <Leader>w :w<CR>
" nnoremap <Leader>W :wa<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>d :bd<CR>
nnoremap <Leader>b :buffers<CR>

" quick sh Ex command
nnoremap <Leader>1 :!

inoremap {<CR> {<CR><BS>}<Esc>O

autocmd! bufwritepost $MYVIMRC source $MYVIMRC

let g:syntastic_cpp_checkers = ["gcc"]
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_auto_refresh_includes = 1

let g:syntastic_cpp_include_dirs = [ '/usr/include', '.', '..', '../*']
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-Wall -Wextra -Wpedantic -std=c++14'

let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers = ['flake8', 'python']

let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
