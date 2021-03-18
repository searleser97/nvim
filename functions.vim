
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
        silent! execute ':!xdotool key Caps_Lock'
    endif
endfunction

au InsertLeave * call TurnOffCaps()

function MyF( ... )
  if (has("gui_running"))
    echo "hola que chow"
  endif
endfunction
