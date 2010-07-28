
" -----------------------------------------------------------------------------
"  .vimrc : VIM config file
"  vim: set filetype=vim
"  Author: Alan Yeh
" -----------------------------------------------------------------------------

" Show line number
set number

" ident options 
set cindent
set cinoptions=>4
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set expandtab
set showcmd
set wildmenu
set showmatch
set nocompatible

" Enable search highlight
set hlsearch

filetype on
syntax on

set fileencodings=utf-8
set termencoding=utf-8
set enc=utf-8
set tenc=utf8

set ls=2
set statusline=%<%f\ %m%=\ %h%r\ %-19([%p%%]\ %3l,%02c%03V%)%y
highlight StatusLine ctermfg=blue ctermbg=white


" set color scheme
colorscheme desert256

 
" Back to last edit position 
if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif
endif

" Configuration for Taglist
let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_Inc_Winwidth=0
let Tlist_GainFocus_On_ToggleOpen=1

" Set source code formatter 
set equalprg=/usr/bin/astyle


" Defines of HotKeys
nnoremap <F3> :bp<CR>
nnoremap <F4> :bn<CR>

nnoremap <F5> gg=G <C-O><C-O><CR>
"F6 previos error
nnoremap <F6> :cp<CR>    
"F7 Next error:  
nnoremap <F7> :cn<CR>
nnoremap <F8> :TlistToggle <CR>
nnoremap <F9> :make<CR>

