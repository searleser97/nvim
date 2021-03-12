let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
let g:rainbow#blacklist = [248, 59, 238]

autocmd FileType * RainbowParentheses
