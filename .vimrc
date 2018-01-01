set nocompatible    
filetype plugin on
syntax on


"________________________________________________________________________
"General Settings

set nu         			" display line numbers on side
set ruler      			" display cursor position in lower right corner


set ignorecase 			" search commands are case insensitive
set mouse=a    			" enable mouse interaction


set autoindent 			" copy indent from current line when creating a new line

"will createa a highlight when typing too far in x direction
highlight ColorColumn ctermbg=magenta	
call matchadd('colorColumn', '\%81v', 100)

set tabstop=4			" a tab character will shift cursor 4 characters
set shiftwidth=4		" pressing >> or << in normal mode indents by 4 characters
set noexpandtab 		" pressing the tab key creates a tab character, not spaces

set splitright			" create vverrtical splits to the right
set splitbelow			" create horizontal splits below


set showcmd				" show length of visual selection
"_______________________________________________________________________
"MAPPINGS for normal mode

"F1 - help on some command
noremap <F1> :h

"F2 - open file in new tab
noremap <F2> :tabe

"F3 - save current file
noremap <F3> :w<CR>

"F4 - exit file
noremap <F4> :q<CR>
