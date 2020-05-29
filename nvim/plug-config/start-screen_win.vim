" ~/.config/nvim/plug-config/start-screen.vim

let g:startify_session_dir = 'C:\Users\ramon\AppData\Local\nvim\session'
let g:startify_lists = [
  \ { 'type': 'files',     'header': ['   Recent Files']            },
  \ { 'type': 'dir',       'header': ['   Project Directory '. getcwd()] },
  \ { 'type': 'sessions',  'header': ['   Sessions']       },
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
  \ ]
let g:startify_bookmarks = [
  \ { 'i': 'C:\Users\ramon\AppData\Local\nvim\init.vim' },
  \ ]
let g:startify_custom_header = [
  \ '     _   __                _         ', 
  \ '    / | / /__  ____ _   __(_)___ ___ ',
  \ '   /  |/ / _ \/ __ \ | / / / __ `__ \',
  \ '  / /|  /  __/ /_/ / |/ / / / / / / /',
  \ ' /_/ |_/\___/\____/|___/_/_/ /_/ /_/ ',
  \ ]
let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_session_persistence = 1
