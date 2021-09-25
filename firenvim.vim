let g:firenvim_config = { 
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {}
\ }

let fc = g:firenvim_config['localSettings']
let fc['.*'] = { 'takeover': 'never' }
let fc['https?://.*github.*/issues/new.*'] = { 'takeover': 'always', 'priority': 1 }
"let fc['https?://.*messenger.*'] = { 'takeover': 'never', 'priority': 1 }
"let fc['https?://.*facebook.*'] = { 'takeover': 'never', 'priority': 1 }
"let fc['https?://.*youtube.*'] = { 'takeover': 'never', 'priority': 1 }
"let fc['https?://.*twitch.*'] = { 'takeover': 'never', 'priority': 1 }
"let fc['https?://.*google.*'] = { 'takeover': 'never', 'priority': 1 }
"let fc['https?://.*nutria-core-backend.herokuapp.*'] = { 'takeover': 'never', 'priority': 1 }
