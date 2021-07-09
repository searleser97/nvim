" copy selected text to clipboard with 'ctrl+c'
noremap <C-c> "+y
" paste from clipboard with 'ctrl+v'
noremap <C-v> "+p
" visual block selection with 'ctrl+b'
noremap <C-b> <C-v>
" change word to uppercase in insert mode with ctrl+u
inoremap <C-u> <Esc>gUiw`]a
" adds the ability to undo word by word
inoremap <Space> <Space><C-g>u
" Deletes previous chars with Backspace key
map <Bs> X
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
      map <C-f> :Files<CR>
      " opens fzf file search in competitive programming reference directory with
      map <space>ref :Files ~/Projects/competitive-programming-reference/Reference<CR>

      map gf <Plug>(grammarous-fixit)
      map gn <Plug>(grammarous-move-to-next-error)
      map gp <Plug>(grammarous-move-to-previous-error)
else
      noremap <C-c> <Cmd>call VSCodeNotifyVisual('editor.action.clipboardCopyAction', 0)<CR><C-c>
      noremap <C-v> <Cmd>call VSCodeNotify('editor.action.clipboardPasteAction')<CR>
      nnoremap u <Cmd>call VSCodeNotify('undo')<CR>
      nnoremap <C-r> <Cmd>call VSCodeNotify('redo')<CR>
      nnoremap <C-h> <Cmd>call VSCodeNotify('workbench.action.previousEditorInGroup')<CR>
      nnoremap <C-l> <Cmd>call VSCodeNotify('workbench.action.nextEditorInGroup')<CR>
      noremap ? <Cmd>call VSCodeReplaceInFile()<CR>
endif

