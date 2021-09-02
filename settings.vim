" adds syntax highlighting
syntax on
" sets colorscheme
colorscheme onedark
"colorscheme onehalfdark
"colorscheme dracula
"colorscheme neodark
"colorscheme OceanicNext
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
" disables symbol transforming to unicode in .tex and .md files
let g:tex_conceal = ""
" saves buffers before closing them
set autowriteall
" disable all blinkin in gvim
set guicursor+=a:blinkon0
" do not wrap lines
set nowrap
" Disable automatic comment insertion
au BufEnter * set fo-=c fo-=r fo-=o
" autocmd BufRead,BufNewFile * setlocal formatoptions-=cro
" enables plugins
filetype plugin on

set sessionoptions=buffers,curdir,folds,help,tabpages,winsize
" echoes time when saving a file
augroup SAVING
    autocmd!
    autocmd BufWritePost * echo strftime('%c')
augroup END
" sets command section height to 2, this prevents 'press enter to continue messages'
set cmdheight=2
" show comments in italics
hi Comment cterm=italic
" to remove background when using terminal
if (has("autocmd") && !exists('g:GuiLoaded'))
    hi Normal guibg=NONE ctermbg=NONE
endif
" checks if your terminal has 24-bit color support
" if yes it enables termguicolors
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
" overrides terminal colors of current theme
let g:terminal_color_1 = '#AB4642'
let g:terminal_color_2 = '#5b8a3a'
let g:terminal_color_15 = '#FFFFFF'

if (!has('nvim'))
    " cursor shape and color settings
    autocmd VimEnter * silent !konsoleprofile UseCustomCursorColor=1
    let &t_SI = "\<Esc>]50;CustomCursorColor=orange;CursorShape=1\x7"
    let &t_SR = "\<Esc>]50;CustomCursorColor=orange;CursorShape=2\x7"
    let &t_EI = "\<Esc>]50;CustomCursorColor=orange;CursorShape=0\x7"
    silent !konsoleprofile CustomCursorColor=orange
    autocmd VimLeave * silent !konsoleprofile UseCustomCursorColor=0;BlinkingCursorEnabled=0
endif

