
function FReplaceWordsInSelection(...)
  if a:0 == 2
    execute '%s/\%V\<' . a:1 . '\>/' . a:2 . '/gc'
  endif
endfunction

function FReplaceWords(...)
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

" makes ctrl-c trigger TurnOffCaps as well
inoremap <c-c> <c-c>:call TurnOffCaps()<CR>
