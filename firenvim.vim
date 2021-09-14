let g:firenvim_config = { 
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'takeover': 'always',
        \ },
    \ }
\ }

let fc = g:firenvim_config['localSettings']
let fc['https?://.*messenger.*'] = { 'takeover': 'never', 'priority': 1 }
let fc['https?://.*facebook.*'] = { 'takeover': 'never', 'priority': 1 }
let fc['https?://.*nutria-core-backend.herokuapp.*'] = { 'takeover': 'never', 'priority': 1 }
