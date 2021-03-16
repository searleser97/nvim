let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks',     'header': ['   Bookmarks']            },
          \ { 'type': 'files',       'header': ['   Files '] },
          \ { 'type': 'dir', 'header': ['   Current Directory '.getcwd()]      },
          \ ]

let g:startify_bookmarks = [
            \ '~/Projects/cpbooster',
            \ '~/Projects/competitive-programming-reference',
            \ ]

let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

" http://patorjk.com/software/taag/#p=display&f=Speed&t=cpbooster
let g:startify_custom_header = [
      \ '                      ______                        _____',
      \ '    _______________ ___  /_ ______ ______ __________  /______ ________',
      \ '    _  ___/___  __ \__  __ \_  __ \_  __ \__  ___/_  __/_  _ \__/ ___/',
      \ '    / /__  __  /_/ /_  /_/ // /_/ // /_/ /_(__  ) / /_  /  __/_  /',
      \ '    \___/  _  .___/ /_.___/ \____/ \____/ /____/  \__/  \___/ /_/',
      \ '           /_/',
      \ ]

