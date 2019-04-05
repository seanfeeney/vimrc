syntax enable

if &term =~ '256color'
	set term=screen-256color
        set t_ut=
endif

" tabs and spaces
autocmd FileType yml setlocal ai ts=2 sw=2 et

" visual
set number
set showcmd
set cursorline
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
Plug 'rakr/vim-one'
Plug 'pearofducks/ansible-vim'
Plug 'yggdroot/indentline'
Plug 'sickill/vim-monokai'
call plug#end()

if executable('rg')
          let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob ""'
  endif

colorscheme monokai
set background=dark

let g:indentLine_char = '┊'
au BufRead,BufNewFile */inventories/*/*.yml set filetype=yaml.ansible
