let mapleader="\<Space>"

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Alternate way to close
nnoremap <C-c> :q!<CR>

" Save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
map s <nop>
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l

" Better tab navigation
nnoremap <c-l> :tabn<cr>
nnoremap <c-h> :tabp<cr>

" Better tab navigation
nnoremap <s-j> <C-d>
nnoremap <s-k> <c-u>
