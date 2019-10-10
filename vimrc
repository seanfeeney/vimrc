syntax enable

" tabs and spaces for yml files
autocmd FileType yml setlocal ai ts=2 sw=2 et
au BufRead,BufNewFile *.yml set filetype=yaml.ansible

" settings for python files
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
cnoremap sudow w !sudo tee % >/dev/null

call plug#begin('~/.vim/plugged')
" Put your plugins here.
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rakr/vim-one'
Plug 'pearofducks/ansible-vim'
Plug 'vim-syntastic/syntastic'
Plug 'gabrielelana/vim-markdown'
Plug 'tomasr/molokai'
call plug#end()

if executable('rg')
          let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob ""'
  endif

colorscheme molokai 
set background=dark

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" customizations for buffers
set wildchar=<Tab> wildmenu wildmode=full
set wildcharm=<C-Z>
nnoremap <F10> :b <C-Z>

