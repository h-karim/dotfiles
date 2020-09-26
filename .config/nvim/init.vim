if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
"Plug 'neovim/nvim-lsp'
Plug 'ayu-theme/ayu-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'scrooloose/nerdtree'
Plug 'valloric/youcompleteme'
Plug 'https://github.com/kana/vim-smartinput'
Plug 'Yggdroot/indentLine'
call plug#end()

"youcompleteme
autocmd InsertLeave * pclose

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"indentLine
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_enabled = 1
"Color scheme
set background=light
colo ayu
let ayucolor="light"
"italics
let g:palenight_terminal_italics=1
"let g:two_firewatch_italics=1
"enable syntax highlight:
syntax on
"display line number
set number

"true colors
"set t_Co=16
"if (has("termguicolors"))
set termguicolors
"endif
"spellcheck
set nospell
"display mode on the last line
set showmode
set smartindent
set cino=e-4
"highlight matching search strings
set hlsearch
"tab-spacing
set tabstop=4
  		
"COMMANDS
"get the name of a group
if !has('nvim')
		"POWERLINE
"	let g:powerline_pycmd="py3"
"		set laststatus=2
"		"YouCompleteMe
		let g:ycm_autoclose_preview_window_after_completion = 0
		let g:ycm_autoclose_preview_window_after_insertion = 0
endif
"custom colors
"highlight Comment ctermfg=#FF4500
highlight LineNr guifg=DarkGray
"highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000
highlight Comment cterm=italic gui=italic
"KEY MAPS
noremap <F3> :set invnumber<CR>
inoremap <F3> <C-O>:set invnumber<CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-Down> <C-W>j
map <C-Up> <C-W>k
map <C-Left> <C-W>h
map <C-Right> <C-W>l

if $SSH_CONNECTION
    colorscheme ayu
    let ayucolor="light"
endif
