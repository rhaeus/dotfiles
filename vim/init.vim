call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'fratajczak/one-monokai-vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'sheerun/vim-polyglot'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rakr/vim-one'
Plug 'guns/xterm-color-table.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'lifepillar/vim-solarized8'
Plug 'xuyuanp/nerdtree-git-plugin'
call plug#end()

set laststatus=2
"set showtabline=1
"set noshowmode
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"set t_Co=256
set title
set number
set relativenumber
set wildmenu
"set hlsearch
set updatetime=500
set mouse=a            " Enable mouse usage (all modes)
syntax on

set background=dark
colorscheme one_monokai


"airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onedark'

"vim cpp enhanced highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1






