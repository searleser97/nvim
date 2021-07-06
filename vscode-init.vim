" block visual selection with 'ctrl+b'
noremap <C-b> <C-v>
" copy selected text to clipboard with 'ctrl+c'
noremap <C-c> "+y
" paste from clipboard with 'ctrl+v'
noremap <C-v> "+p

function! VSCodeNotifyVisual(cmd, leaveSelection, ...)
    let mode = mode()
    if mode ==# 'V'
        let startLine = line('v')
        let endLine = line('.')
        call VSCodeNotifyRange(a:cmd, startLine, endLine, a:leaveSelection, a:000)
    elseif mode ==# 'v' || mode ==# "\<C-v>"
        let startPos = getpos('v')
        let endPos = getpos('.')
        call VSCodeNotifyRangePos(a:cmd, startPos[1], endPos[1], startPos[2], endPos[2] + 1, a:leaveSelection, a:000)
    else
        call VSCodeNotify(a:cmd, a:000)
    endif
endfunction

function! ReplaceInFile()
    let mode = mode()
    call VSCodeNotifyVisual('editor.action.startFindReplaceAction', 0)
    echo mode
    if mode ==# 'V' || mode ==# '\<C-v>' || mode ==# 'v'
        call VSCodeNotify('toggleFindInSelection')
    endif
endfunction

noremap ? <Cmd>call ReplaceInFile()<CR>
