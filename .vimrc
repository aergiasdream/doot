:set shiftwidth=2
:set number
:syntax enable
hi Search cterm=reverse
set undofile
set undodir=~/.vim/undo
filetype on
filetype plugin on
filetype indent on
nnoremap \\ :noh<return>
let &titlestring = "vim[" . expand("%:t") . "]"
if &term == "screen"
  set t_ts=k
  set t_fs=\
endif
if &term == "screen" || &term == "xterm-256color" || &term == "alacritty"
  set title
endif

let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\    'extends' : 'jsx',
\  },
\}

call plug#begin()
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
call plug#end()
