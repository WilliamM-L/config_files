" esc in insert & visual mode
imap df <Esc>
vmap df <Esc>

" To go forward/backward with <C-l>/<C-h>, use normal keybinds settings.


" NOTE: must use 'map' and not 'nmap'
exmap surround_wiki surround [[ ]]
exmap surround_double_quotes surround " "
exmap surround_single_quotes surround ' '
exmap surround_brackets surround ( )
exmap surround_square_brackets surround [ ]
exmap surround_curly_brackets surround { }

map [[ :surround_wiki
nunmap s
vunmap s
map s" :surround_double_quotes
map s' :surround_single_quotes
map sb :surround_brackets
map s( :surround_brackets
map s) :surround_brackets
map s[ :surround_square_brackets
map s[ :surround_square_brackets
map s{ :surround_curly_brackets
map s} :surround_curly_brackets

" Jump to link shortcut


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
