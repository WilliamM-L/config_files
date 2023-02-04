set number
set relativenumber
set cursorline
set autoindent
let mapleader=" "
" esc in insert & visual mode
inoremap df <esc>
vnoremap df <esc>

" Going up or down, screen centered
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz

" Empty line
nnoremap <leader>o o<esc>k
nnoremap <leader>O O<esc>j

"Go to Beginning/End of line
nnoremap H ^
nnoremap L $
nnoremap dH d^
nnoremap dL d$
nnoremap cH c^
nnoremap cL c$

" Indenting
vnoremap > >gv
vnoremap < <gv
"Go to Beginning/End of line
vnoremap H ^
vnoremap L $

" when pasting in visual mode, don't overwrite the register
vnoremap p "_dP

