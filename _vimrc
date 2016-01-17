" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

:nnoremap j <Left>
:nnoremap k <Up>
:nnoremap l <Down>
:nnoremap ; <Right>
:nnoremap h ;
" alternatively, use ,. to find/till back/forth and map h to .:
":nnoremap . ;
":nnoremap h .

" to make Y consistent with C and D (by default Y = yy):
:nnoremap Y y$

:vnoremap j <Left>
:vnoremap k <Up>
:vnoremap l <Down>
:vnoremap ; <Right>

:inoremap <S-Space> <Esc>


" Highlight characters at positions >= 80 as erroneous
au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>79v.\+', -1)

set nu			" line numbering
set lines=60
set columns=84
"set nowrap
set history=512         " CLI commands to keep in history
set undolevels=512      " depth of the undo tree
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set hlsearch		" highlight search pattern matches

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
endif


"TODO

" Automatic reloading of _vimrc
"au bufwritepost _vimrc source %

" Map sort function to a key
"vnoremap <Leader>s :sort<CR>

" Better copy & paste
"set pastetoggle=<F2>
"set clipboard=unnamed

" Mouse and backspace
"set mouse=a 
"set bs=2		" make backspace behave like normal

" Rebing <Leader> key
"set mapleader=","

" Bind nohl
" Removes highlight of your last search
"noremap <C-n> :nohl<CR>
"vnoremap <C-n> :nohl<CR>
"inoremap <C-n> :nohl<CR>

" Easier indentation of code blocks
"vnoremap < <gv
"vnoremap > >gv

" TABs vs spaces 
"set tabstop=4
"set softtabstop=4
"set shiftwidth=4
"set shiftround
"set expandtab
