:set shiftwidth=2
:set number
set undofile
set undodir=~/.vim/undo
filetype on
filetype plugin on
filetype indent on
let &titlestring = "vim[" . expand("%:t") . "]"
if &term == "screen"
  set t_ts=k
  set t_fs=\
endif
if &term == "screen" || &term == "xterm-256color"
  set title
endif
