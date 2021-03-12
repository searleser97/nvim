" adds syntax highlighting
syntax on
" speeds up commands after <Esc> key. example shift+o
set ttimeoutlen=100
" adds relative row index
set relativenumber
" sets tab width
set tabstop=2
" sets the amount of spaces when pressing TAB
set shiftwidth=2
" sets visual identation when editing files inside vim
"set softtabstop=2
" tells vim to indent using spaces
set expandtab
" enables naive indent
set autoindent
" enables smart indent for most file types
set smartindent
" show ocurrences while typing in a search command
set incsearch
" enables mouse interaction
set mouse=a
" enables nice status bar with lightline plugin
set laststatus=2
" saves buffers before closing them
set autowriteall
" disable all blinkin in gvim
set guicursor+=a:blinkon0
" Disable automatic comment insertion
autocmd BufRead,BufNewFile * setlocal formatoptions-=cro
filetype plugin on
