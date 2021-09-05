" enable tabline
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline_powerline_fonts = 1

" Switch to your current theme
if has('nvim')
      let g:airline_theme = 'onedark'
else
      "let g:airline_theme = 'understated'
      "let g:airline_theme = 'solarized_flood'
      let g:airline_theme = 'lessnoise'
      "let g:airline_theme = 'fruit_punch'
      "let g:airline_theme = 'cool'
      "let g:airline_theme = 'cobalt2'

endif

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode
