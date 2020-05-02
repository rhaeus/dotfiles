" ===Plugins===
" call plug#begin('C:\Users\ramon\AppData\Local\nvim\plugged')
call plug#begin('~/.config/nvim/plugged')
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Plug 'scrooloose/nerdtree'
"Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'} " ranger

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'airblade/vim-rooter'

Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'APZelos/blamer.nvim'
Plug 'tpope/vim-commentary'

Plug 'arcticicestudio/nord-vim'
call plug#end()

" ===General settings===
" language en_US " windows GUI nvim
syntax enable
set number
set relativenumber
set termguicolors
"set t_Co=256                            " Support 256 colors

set updatetime=100
set signcolumn=yes
set mouse=a            " Enable mouse usage (all modes)
set cursorline
set noshowmode

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

source $HOME/.config/nvim/general/mappings.vim
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim      "ranger
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/commentary.vim

" ===vim cpp enhanced highlight settings===
 let g:cpp_class_scope_highlight = 1
 let g:cpp_member_variable_highlight = 1
 let g:cpp_class_decl_highlight = 1
 let g:cpp_posix_standard = 1


    
" Terminal colors
" let g:terminal_color_0  = '#2e3436'
" let g:terminal_color_1  = '#cc0000'
" let g:terminal_color_2  = '#4e9a06'
" let g:terminal_color_3  = '#c4a000'
" let g:terminal_color_4  = '#3465a4'
" let g:terminal_color_5  = '#75507b'
" let g:terminal_color_6  = '#0b939b'
" let g:terminal_color_7  = '#d3d7cf'
" let g:terminal_color_8  = '#555753'
" let g:terminal_color_9  = '#ef2929'
" let g:terminal_color_10 = '#8ae234'
" let g:terminal_color_11 = '#fce94f'
" let g:terminal_color_12 = '#729fcf'
" let g:terminal_color_13 = '#ad7fa8'
" let g:terminal_color_14 = '#00f5e9'
" let g:terminal_color_15 = '#eeeeec'

let $COLORTERM="truecolor"

