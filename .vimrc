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

"will create a highlight when typing too far in x direction
"helps for readability
highlight ColorColumn ctermbg=magenta	
call matchadd('colorColumn', '\%81v', 100)

set tabstop=4			" a tab character will shift cursor 4 characters
set shiftwidth=4		" pressing >> or << in normal mode indents by 4 characters
set noexpandtab 		" pressing the tab key creates a tab character, not spaces

set splitright			" create vertical splits to the right
set splitbelow			" create horizontal splits below


set showcmd				" show length of visual selection

" prevent auto-continuation of comment when hitting ENTER
" no matter what type of file is being edited
autocmd FileType * setlocal formatoptions-=cro	
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

"Shift-F4 = exit without saving
noremap <S-F4> :q!<CR>

"F6 - switch to next split
noremap <F6> <C-W><C-W>

"Shift-F6 - switch to next split, in reverse order
noremap <S-F6> <C-W>W


"use (space) to be the same as semicolon
noremap <SPACE> :


"_______________________________________________________________________
"Mappings for insert mode

"F2 - pair of parentheses, continue typing inside them
inoremap <F2> ()<LEFT>

"F3 - pair of parentheses, continue typing after them
inoremap <F3> ()

"F4 - pair of curly braces, continue typing inside them
inoremap <F4> {}

"F5 - pair  of square brackets, continue typing inside them
inoremap <F5> []

"F6 - pair of square brackets, continue typing after them
inoremap <F6> []<LEFT>

"F7 - pair of double quotes, continue typing inside them
inoremap <F7> ""<LEFT>

"F8 - pair of single quotes, continue typing inside them
inoremap <F8> ''<LEFT>
