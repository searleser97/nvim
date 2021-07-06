
function! FReplaceWordsInSelection(...)
  if a:0 == 2
    execute '%s/\%V\<' . a:1 . '\>/' . a:2 . '/gc'
  endif
endfunction

function! FReplaceWords(...)
  if a:0 == 2
    execute '%s/\<' . a:1 . '\>/' . a:2 . '/gc'
  endif
endfunction

function TurnOffCaps()
  let capsState = matchstr(system('xset -q'), '00: Caps Lock:\s\+\zs\(on\|off\)\ze')
  if capsState == 'on'
    execute '!xdotool key Caps_Lock'
  endif
endfunction

au InsertLeave * call TurnOffCaps()

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

