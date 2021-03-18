" change word to uppercase in insert mode with ctrl+u
inoremap <C-u> <Esc>gUiW`]a
" adds the ability to undo word by word
inoremap <Space> <Space><C-g>u
" prints newlines with ENTER key
" map <Enter> i<Enter><Esc> l
" creates a "space" when I click the space key
map <Space> i<space><Esc>l
" Deletes previous chars with Backspace key
map <Bs> X
" enables ctrl-c to copy to clipboard
map <C-c> "+y
" enables ctrl-v to paste from clipboard
map <C-v> "+p
" loads c++ template with F6
map <F6> :r ~/Projects/competitive-programming-reference/Reference/Coding\ Resources/C++/Competitive\ Programming\ Template.cpp<CR>
" copies entire text with ctrl+y
map <C-y>  ggVG<C-c><C-o><C-o>zz:echo "Contents Copied to clipboard"<CR>
" indents whole file with F8
map <F8> gg=G``zz
" opens fzf file search with ctrl+p
map <C-p> :Files<CR>
" opens fzf file search in competitive programming reference directory with F7
map <F7> :Files ~/Projects/competitive-programming-reference/Reference<CR>
" toggles comments with ctrl+/
map <C-_> <Plug>NERDCommenterToggle
" comments in-line with ctrl+\
map <C-\> <Plug>NERDCommenterComment
" enables clangformat with F9 for supported files
"autocmd FileType c,cpp,objc,java,js map <F9> :ClangFormat<CR>
:command -nargs=+ ReplaceWords call FReplaceWords(<f-args>)
map <F3> :<C-u>ReplaceWords
" rename exact words within selection with \+r+n
:command -nargs=+ ReplaceWordsInSelection call FReplaceWordsInSelection(<f-args>)
map <leader>rn :<C-u>ReplaceWordsInSelection
" cycle through buffers (left to right) with <tab>
noremap <tab> :bn<CR>
" cycle through buffers (right to left) with ctrl + l
map <A-l> :bn<CR>
" cycle through buffers (right to left) with ctrl + h
map <A-h> :bp<CR>

" go to right window with ctrl + l
map <C-l> :wincmd l<CR>
" go to left window with ctrl + h
map <C-h> :wincmd h<CR>
" go to up window with ctrl + k
map <C-k> :wincmd k<CR>
" go to down window with ctrl + j
map <C-j> :wincmd j<CR>

