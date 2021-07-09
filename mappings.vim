" copy selected text to clipboard with 'ctrl+c'
noremap <C-c> "+y
" paste from clipboard with 'ctrl+v'
noremap <C-v> "+p
" visual block selection with 'ctrl+b'
noremap <C-b> <C-v>
" space+w behaves like ctrl+w
nnoremap <space>w <C-w>
" Deletes previous chars with Backspace key
nnoremap <Bs> X
" change word to uppercase in insert mode with ctrl+u
inoremap <C-u> <Esc>gUiw`]a
" adds the ability to undo word by word
inoremap <Space> <Space><C-g>u
" makes ctrl-c trigger TurnOffCaps()
inoremap <c-c> <c-c>:call TurnOffCaps()<CR>

map <space>f <Plug>Sneak_s
map <space>F <Plug>Sneak_S

if !exists('g:vscode')
      "replace exact words (case sensitive) in entire file or selection
      :command -nargs=+ ReplaceWords call FReplaceWords(<f-args>)
      :command -nargs=+ ReplaceWordsInSelection call FReplaceWordsInSelection(<f-args>)
      map <expr> ? mode() ==# 'V' ? ':<C-u>ReplaceWordsInSelection ':':<C-u>ReplaceWords '
      "map ? <cmd>call FReplaceFactory()<CR>
      " loads c++ template with space+l+t (Load Template)
      map <space>lt :r ~/Projects/competitive-programming-reference/Reference/Coding\ Resources/C++/Competitive\ Programming\ Template.cpp<CR>
      " copies entire text with space+a
      map <space>a  ggVG<C-c><C-o><C-o>zz:echo "Contents Copied to clipboard"<CR>
      " indents whole file with 'space+i+a' (Indent All)
      map <space>ia gg=G``zz
      " cycle through buffers (left to right) with <tab>
      noremap <tab> :bn<CR>
      " cycle through buffers (right to left) with ctrl + l
      map <C-l> :bn<CR>
      " cycle through buffers (left to right) with ctrl + h
      map <C-h> :bp<CR>
      " go to right window with alt + l
      map <A-l> :wincmd l<CR>
      " go to left window with alt + h
      map <A-h> :wincmd h<CR>
      " go to up window with alt + k
      map <A-k> :wincmd k<CR>
      " go to down window with alt + j
      map <A-j> :wincmd j<CR>
      " remap window shortcuts to alt + w instead of ctrl + w
      noremap <A-w> <C-w>
      " close current buffer
      map <C-w> :bd<CR>
      " ========= Plugins Mappings =========
      " toggles comments
      map <C-_> <Plug>NERDCommenterToggle
      " comments in-line
      map <C-\> <Plug>NERDCommenterComment
      " opens fzf file search
      map <C-p> :Files<CR>
      " opens fzf file search in competitive programming reference directory with
      map <space>ref :Files ~/Projects/competitive-programming-reference/Reference<CR>

      map gf <Plug>(grammarous-fixit)
      map gn <Plug>(grammarous-move-to-next-error)
      map gp <Plug>(grammarous-move-to-previous-error)
else
      nnoremap u <Cmd>call VSCodeNotify('undo')<CR>
      noremap <C-r> <Cmd>call VSCodeNotify('redo')<CR>
      noremap <C-h> <Cmd>call VSCodeNotify('workbench.action.previousEditorInGroup')<CR>
      noremap <C-l> <Cmd>call VSCodeNotify('workbench.action.nextEditorInGroup')<CR>
      noremap <C-w> <Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
      noremap ? <Cmd>call VSCodeReplaceInFile()<CR>
endif

