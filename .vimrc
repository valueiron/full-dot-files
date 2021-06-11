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

"Fuzzy Open
set path+=**

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
    Plug 'ferrine/md-img-paste.vim'
   call plug#end()
endif

" other plugins
"Gruvbox
" let g:gruvbox_contrast_dark = 'Hard'
" let g:gruvbox_transparent_bg=1
" set background=dark
" colorscheme gruvbox
" Other Plugin
let g:user_emmet_leader_key=','
" no spell for now
au BufNew,BufRead * set nospell

autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
" let g:mdip_imgdir = 'img'
" let g:mdip_imgname = 'image'
" Highlight color override
"
hi StatusLine ctermfg=red  ctermbg=NONE
hi StatusLineNC ctermfg=red ctermbg=NONE
hi Normal ctermbg=NONE
hi LineNr ctermbg=black ctermbg=NONE
hi SpecialKey ctermfg=black ctermbg=NONE
hi ModeMsg ctermfg=gray cterm=NONE ctermbg=NONE
hi MoreMsg ctermfg=gray cterm=NONE
hi NonText ctermfg=black cterm=NONE
hi vimGlobal ctermfg=red ctermbg=NONE
hi ErrorMsg ctermbg=234 ctermfg=darkred cterm=NONE
hi Error ctermbg=234 ctermfg=darkred cterm=NONE
hi SpellBad ctermbg=234 ctermfg=darkred cterm=NONE
hi SpellRare ctermbg=234 ctermfg=darkred cterm=NONE
hi Search ctermbg=236 ctermfg=darkred
hi IncSearch ctermbg=236 cterm=NONE ctermfg=darkred
hi Matchparen ctermbg=236 ctermfg=darkred
