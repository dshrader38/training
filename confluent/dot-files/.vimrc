" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Load plugins
filetype plugin indent on
"runtime ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Start plugins
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p

set hidden

" turn on syntax highlighting
syntax on
filetype indent plugin on

set autoindent                  " keep the same indent as the line you're currently on
set autoread			              " relaod filed changed outside of vim
set backspace=indent,eol,start	" allow backspace in insert mode
set expandtab                   " indention without tabs
set gcr=a:blinkon0	            " disable cursor blinks
set history=1000                " store lots of :cmdline history
set nobackup                    " turn backoff off
set nowritebackup               " don't want backup files while editing
set noswapfile                  " no .swp files        
set number                      " line numbers are good
set ruler                       " always show current position
set shiftwidth=2
set showcmd		                  " show incomplete cmds down the bottom
set showmode			              " show current mode down the bottom
set smartindent
set smarttab
set softtabstop=2
set tabstop=2
set wildmenu                    " turn on the WiLd menu
set viminfo=""                  " disable .viminfo file
set visualbell                  " no sounds

" color scheme
colorscheme vividchalk

" make Y consistent with C and D.  See :help Y.
nnoremap Y y$

" map CAPS LOCK to ESC
imap jk <ESC>

