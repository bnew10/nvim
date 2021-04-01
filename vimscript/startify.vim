let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Recent']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ ]

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0
let g:startify_custom_indices = map(range(1,100), 'string(v:val)')


let g:ascii = [
        \' ________   ___      ___ ___  _____ ______      ',
        \'|\   ___  \|\  \    /  /|\  \|\   _ \  _   \    ',
        \'\ \  \\ \  \ \  \  /  / | \  \ \  \\\__\ \  \   ',
        \' \ \  \\ \  \ \  \/  / / \ \  \ \  \\|__| \  \  ',
        \'  \ \  \\ \  \ \    / /   \ \  \ \  \    \ \  \ ',
        \'   \ \__\\ \__\ \__/ /     \ \__\ \__\    \ \__\',
        \'    \|__| \|__|\|__|/       \|__|\|__|     \|__|',
        \]                                        

let g:startify_custom_header = startify#pad(g:ascii)