if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
"Plug 'drewtempelmeyer/palenight.vim'
Plug 'dylanaraps/wal.vim'
Plug 'scrooloose/nerdtree'
Plug 'valloric/youcompleteme'
call plug#end()



"Color scheme
colorscheme wal
"italics
"let g:palenight_terminal_italics=1
"enable syntax highlight:
syntax on
"display line number
set number

"true colors
set t_Co=256
"if (has("termguicolors"))
	set termguicolors
"endif
"spellcheck
set nospell
"display mode on the last line
set showmode
"autoindent:
set autoindent
set smartindent
set cino=e-4
"highlight matching search strings
set hlsearch
	
"tab-spacing
set tabstop=4
  		
"COMMANDS
"get the name of a group
command SynID  echo synIDattr(synID(line("."), col("."), 1), "name")
"POWERLINE
let g:powerline_pycmd="py3"
set laststatus=2
"Custom colors
"highlight Comment ctermfg=#FF4500
"highlight LineNr guifg=#ffffff

"KEY MAPS
noremap <F3> :set invnumber<CR>
inoremap <F3> <C-O>:set invnumber<CR>

