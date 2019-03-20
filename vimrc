syntax enable

" tabs and spaces
set tabstop=4
set softtabstop=4
set expandtab

" visual
set number
set showcmd
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch

" searching
set incsearch
set hlsearch

" folding
set foldenable
set foldlevelstart=10
nnoremap <space> za
set foldmethod=indent

" shortcuts
inoremap jk <esc>

call plug#begin('~/.vim/plugged')
" Put your plugins here.
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

if executable('rg')
          let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob ""'
  endif
