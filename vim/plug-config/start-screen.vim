" ~/.config/nvim/plug-config/start-screen.vim

let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_lists = [
  \ { 'type': 'files',     'header': ['   Recent Files']            },
  \ { 'type': 'dir',       'header': ['   Project Directory '. getcwd()] },
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
  \ { 'type': 'sessions',  'header': ['   Sessions']       },
  \ ]
let g:startify_bookmarks = [
  \ { 'c': '~/.config/i3/config' },
  \ { 'i': '~/.config/nvim/init.vim' },
  \ { 'b': '~/.bashrc' },
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
