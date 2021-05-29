set nocompatible
set number
set showcmd
set relativenumber
set nowrap
set autoindent
set wildmenu
set path+=**
set hlsearch
set incsearch
set ignorecase
set linebreak
set hidden
set shiftwidth=2
set softtabstop=2
set smartindent
set smarttab
"replace tabs with spaces automatically
set expandtab
set wrapscan
set nobackup
set noswapfile
set nowritebackup
set ttyfast
set lazyredraw
" prevent truncated yanks, deletes, etc.
set viminfo='20,<1000,s1000

set omnifunc=syntaxcomplete#Complete

if exists('$TMUX')
  set clipboard=
else
  set clipboard=unnamed
endif

" Remaps
imap jj <Esc>
map Y y$
" Remap arrows to move between buffers and tabs
nnoremap <left> :bprev<CR>
nnoremap <right> :bnext<CR>
nnoremap <up> :tabnext<CR>
nnoremap <down> :tabprev<CR>
nnoremap <C-L> :nohl<CR><C-L>

" needed for plugins
syntax enable
filetype plugin on

if filereadable(expand("~/.vim/autoload/plug.vim"))
   call plug#begin('~/.vimplugins')
    Plug 'morhetz/gruvbox'
    Plug 'vim-surround'
    Plug 'mattn/emmet-vim'
   call plug#end()



"Gruvbox
" let g:gruvbox_contrast_dark = 'Hard'
" let g:gruvbox_transparent_bg=1
" set background=dark
" colorscheme gruvbox
