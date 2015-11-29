colorscheme summerfruit256

" basics ---
syntax on

set nocompatible
set number
set nowrap
filetype on
filetype indent on

set modeline

set hlsearch
noremap <Esc><Esc> :nohlsearch<CR><Esc>
noremap ; :
noremap : ;
set backspace=indent,eol,start

" backup settings ---
set backup
set backupdir=$HOME/.vim/backup
let &directory = &backupdir

" tab settings ---
set smarttab
set expandtab
autocmd FileType c,cpp,perl,rb,php,html,erl set cindent tabstop=2 shiftwidth=2
autocmd FileType python set tabstop=2 shiftwidth=2
set autoindent

" miscellaneous ---
autocmd BufRead,BufNewFile *.py set ai
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,with,try,except,finally,def,class
autocmd BufRead,BufNewFile *.c setfiletype c
autocmd BufRead,BufNewFile *.cpp setfiletype cpp
autocmd BufRead,BufNewFile *.html setfiletype html
autocmd BufRead,BufNewFile *.rb setfiletype ruby
autocmd BufRead,BufNewFile *.php setfiletype php
autocmd BufRead,BufNewFile *.js setfiletype javascript

" change the color of status line in input mode
augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
autocmd InsertLeave * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
augroup END

nnoremap <silent> <C-p> :<C-u>execute '!' &l:filetype '%'<Return>

" disable paste mode automatically in normal mode
autocmd InsertLeave * set nopaste
