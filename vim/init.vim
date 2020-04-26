" ===Plugins===
" call plug#begin('C:\Users\ramon\AppData\Local\nvim\plugged')
call plug#begin('~/.config/nvim/plugged')
Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'bfrg/vim-cpp-modern'
" Plug 'scrooloose/syntastic'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'

Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'arcticicestudio/nord-vim'
" Plug 'cocopon/iceberg.vim'
" Plug 'rakr/vim-one'
" Plug 'joshdick/onedark.vim'
" Plug 'tomasr/molokai'
" Plug 'morhetz/gruvbox'
" Plug 'dracula/vim'
" Plug 'sainnhe/edge'
call plug#end()

" ===General settings===
" language en_US " windows GUI nvim
syntax enable
set number
set relativenumber
set termguicolors
set updatetime=100
set signcolumn=yes
set mouse=a            " Enable mouse usage (all modes)
set cursorline

set expandtab
set tabstop=2
set shiftwidth=0
set autoindent
set smartindent

"set wildmenu
"set wildmode=list:longest,full 
" set wildmode=longest:full,full

set background=dark
colorscheme nord

" ===vim cpp enhanced highlight settings===
 let g:cpp_class_scope_highlight = 1
 let g:cpp_member_variable_highlight = 1
 let g:cpp_class_decl_highlight = 1
 let g:cpp_posix_standard = 1

" ===coc settings===
source ~/.config/nvim/plug-config/coc.vim
 
" ===airline settings===
let g:airline_powerline_fonts = 1


" ====NerdTree settings ===
" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeQuitOnOpen = 1
let g:NERDTreeWinSize=50

" ===NerdTree Git Plugin===
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "M",
    \ "Staged"    : "✚",
    \ "Untracked" : "U",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" ===Custom mappings===
map <Space> <Leader>
map <M-l> <Esc>

map <Leader>nt :NERDTreeToggle<CR>
map <Leader>nf :NERDTreeFind<CR>
map <Leader>p viwp
map <Leader>c viwy
" replace word at cursor in whole file with confirmation
map <Leader>ra yiw:%s/\<<C-r><C-w>\>//gc<left><left><left> 
" replace a word in currently highlighted block
map <Leader>rv :s//g<left><left>
" replace word in last yanked and pasted block
map <Leader>ry :'[,']s//g<left><left>

