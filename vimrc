syntax enable

if &term =~ '256color'
	set term=screen-256color
        set t_ut=
endif

" tabs and spaces
autocmd FileType yml setlocal ai ts=2 sw=2 et

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

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
Plug 'sickill/vim-monokai'
Plug 'vim-syntastic/syntastic'
call plug#end()

if executable('rg')
          let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob ""'
  endif

" colorscheme vim-monokai 
set background=dark

let g:indentLine_char = '┊'
au BufRead,BufNewFile *.yml set filetype=yaml.ansible

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
