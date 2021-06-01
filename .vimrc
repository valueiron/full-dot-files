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
set nofoldenable
set foldcolumn=0
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
    Plug 'tpope/vim-surround'
    Plug 'mattn/emmet-vim'
    Plug 'vim-pandoc/vim-pandoc'
    Plug 'rwxrob/vim-pandoc-syntax-simple'
   call plug#end()
endif


"Gruvbox
" let g:gruvbox_contrast_dark = 'Hard'
" let g:gruvbox_transparent_bg=1
" set background=dark
" colorscheme gruvbox
" Other Plugin
let g:user_emmet_leader_key=','

" Highlight color override
hi StatusLine ctermfg=black ctermbg=NONE
hi StatusLineNC ctermfg=black ctermbg=NONE
hi Normal ctermbg=NONE
hi LineNr ctermbg=black ctermbg=NONE
hi SpecialKey ctermfg=black ctermbg=NONE
hi ModeMsg ctermfg=black cterm=NONE ctermbg=NONE
hi MoreMsg ctermfg=black cterm=NONE
hi NonText ctermfg=black cterm=NONE
hi vimGlobal ctermfg=black ctermbg=NONE
hi ErrorMsg ctermbg=234 ctermfg=darkred cterm=NONE
hi Error ctermbg=234 ctermfg=darkred cterm=NONE
hi SpellBad ctermbg=234 ctermfg=darkred cterm=NONE
hi SpellRare ctermbg=234 ctermfg=darkred cterm=NONE
hi Search ctermbg=236 ctermfg=darkred
hi IncSearch ctermbg=236 cterm=NONE ctermfg=darkred
hi Matchparen ctermbg=236 ctermfg=darkred

" more color overides
au FileType * hi StatusLine ctermfg=black ctermbg=NONE
au FileType * hi StatusLineNC ctermfg=black ctermbg=NONE
au FileType * hi Normal ctermbg=NONE
au FileType * hi Special ctermfg=cyan
au FileType * hi LineNr ctermbg=black ctermbg=NONE
au FileType * hi SpecialKey ctermfg=black ctermbg=NONE
au FileType * hi ModeMsg ctermfg=black cterm=NONE ctermbg=NONE
au FileType * hi MoreMsg ctermfg=black cterm=NONE
au FileType * hi MoreMsg ctermfg=black cterm=NONE
au FileType * hi NonText ctermfg=black cterm=NONE
au FileType * hi vimGlobal ctermfg=black ctermbg=NONE
au FileType * hi ErrorMsg ctermbg=234 ctermfg=darkred cterm=NONE
au FileType * hi Error ctermbg=234 ctermfg=darkred cterm=NONE
au FileType * hi SpellBad ctermbg=234 ctermfg=darkred cterm=NONE
au FileType * hi SpellRare ctermbg=234 ctermfg=darkred cterm=NONE
au FileType * hi Search ctermbg=236 ctermfg=darkred
