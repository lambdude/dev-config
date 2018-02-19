" Use Vim settings over Vi
set nocompatible

set encoding=utf-8
scriptencoding utf-8

filetype indent plugin on

" Turn on syntax highlighting
syntax enable

" Automatic indent
set autoindent

" Make backspace act like it usually does
set backspace=indent,eol,start
set complete-=i

" Incremental search
set incsearch

" Show cursor position
set ruler
set laststatus=2
set wildmenu

" Use the nord color scheme
colorscheme nord

" Set dark mode
set background=dark
set hidden

set scrolloff=1
set sidescrolloff=5
set display+=lastline

" Display incomplete commands
set showcmd
set cmdheight=2

" HighLight search results
set hlsearch
set ignorecase
set smartcase
set smarttab
set smartindent

set nostartofline

" Display line numbers
set number

" Make line numbers 5 digits
set numberwidth=5

set confirm

set notimeout ttimeout ttimeoutlen=200

" Set tabs to 4 spaces
set expandtab
set shiftwidth=4
set softtabstop=4

set autoread

set lazyredraw

set showmatch

set listchars=eol:¬,tab:»\ ,trail:·,extends:>,precedes:<
set list

" Set lines to wrap
set linebreak

" Set the line wrapping mark
set showbreak=+++

" Remove | from window separators
set fillchars+=vert:\ 

" Highlight the current line
set cursorline

" Set number of undo levels
set undolevels=1000

" Automatically write when switching buffers
set autowriteall

" Open new split panes to the bottom and the right
set splitbelow
set splitright

" Set the leader
let mapleader = ","

" Source plugins
so ~/.vim/plugins.vim

set statusline+=%{fugitive#statusline()}
set statusline+=%*

" Source mappings
so ~/.vim/mappings.vim

"---Auto-Commands---"

augroup configgroup
    autocmd!
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal commentstring=#\ %s
augroup END

" Add an augroup for running `ctags -R` on each save
