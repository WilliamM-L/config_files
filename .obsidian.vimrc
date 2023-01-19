" esc in insert & visual mode
imap df <Esc>
vmap df <Esc>
exmap back obcommand app:go-back
nmap <C-h> :back
exmap forward obcommand app:go-forward
nmap <C-l> :forward

" Going up or down, screen centered
nmap <C-u> <C-u>zz
nmap <C-d> <C-d>zz

" Empty line
nmap <leader>o o<esc>k
nmap <leader>O O<esc>j

"Go to Beginning/End of line
nmap H ^
nmap L $

" Indenting
vmap > >gv
vmap < <gv

" when pasting in visual mode, don't overwrite the register
vmap p "_dP
