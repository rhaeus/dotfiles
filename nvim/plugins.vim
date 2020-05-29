" ~/.config/nvim/plugins.vim
"
" call plug#begin('C:\Users\ramon\AppData\Local\nvim\plugged')
call plug#begin('~/.config/nvim/plugged')
Plug 'mhinz/vim-startify'

Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rhysd/vim-clang-format'

"Plug 'scrooloose/nerdtree'
"Plug 'xuyuanp/nerdtree-git-plugin'
" Plug 'kevinhwang91/rnvimr', {'do': 'make sync'} " ranger

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'airblade/vim-rooter'

Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'APZelos/blamer.nvim'
Plug 'tpope/vim-commentary'

Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
call plug#end()
