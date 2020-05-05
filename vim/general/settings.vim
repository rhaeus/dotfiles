" ~/.config/nvim/general/settings.vim
" language en_US " windows GUI nvim
syntax enable
set number
set relativenumber
set termguicolors
"set t_Co=256                            " Support 256 colors
let $COLORTERM="truecolor"

set updatetime=100
set signcolumn=yes
set mouse=a            " Enable mouse usage (all modes)
set cursorline
set noshowmode
set nowrap

set expandtab
set tabstop=2
set shiftwidth=0
set autoindent
set smartindent
set scrolloff=2 " always show at last one line below/above the cursor 
set sidescrolloff=2 " always show at least one line left/right of the cursor

set ignorecase " case insensitive searching
set smartcase " automatically show to case sensitive when using upper case char

set splitbelow
set splitright
"set wildmenu
"set wildmode=list:longest,full 
" set wildmode=longest:full,full

set clipboard=unnamedplus               " Copy paste between vim and everything else

set background=dark
colorscheme nord

