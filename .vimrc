call plug#begin('~/.vim/plugged')
Plug 'drewtempelmeyer/palenight.vim'

call plug#end()


"true colors
set term=xterm-256color
set termguicolors

"Color scheme
colorscheme palenight 
"italics
let g:palenight_terminal_italics=1
"enable syntax highlight:
syntax on
"display line number
set number
"spellcheck
set nospell
"display mode on the last line
set showmode
"autoindent:
set autoindent
"highlight matching search strings
set hlsearch

"CUSTOM COLOR SCHEME
highlight Comment ctermbg=Yellow ctermfg=Yellow 

"COMMANDS
"get the name of a group
command SynID  echo synIDattr(synID(line("."), col("."), 1), "name")
"POWERLINE
let g:powerline_pycmd="py3"
set laststatus=2
