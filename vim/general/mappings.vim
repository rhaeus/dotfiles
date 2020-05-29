" ~/.config/nvim/general/mappings.vim

" ===Custom mappings===
map <Space> <Leader>
map <M-l> <Esc>
noremap <Leader>o o<Esc>
noremap <Leader>O O<Esc>
map <Leader>c viwy
map <Leader>p viwp<Leader>c
" replace word at cursor in whole file with confirmation
map <Leader>ra yiw:%s/\<<C-r><C-w>\>//gc<left><left><left> 
" replace a word in currently highlighted block
map <Leader>rv :s//g<left><left>
" replace word in last yanked and pasted block
map <Leader>ry :'[,']s//g<left><left>

map <Leader>bn :bn<cr>
map <Leader>k  :bn<cr>
map <Leader>bp :bp<cr>
map <Leader>j  :bp<cr>
map <Leader>bd :bd<cr>  

noremap <Leader>sh :<C-u>split<CR>
noremap <Leader>sv :<C-u>vsplit<CR>
noremap <Leader>qw <C-w>q

" switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

" maintain visual mode after shift
vmap < <gv
vmap > >gv

" " TAB in general mode will move to text buffer
" nnoremap <TAB> :bnext<CR>
" " SHIFT-TAB will go back
" nnoremap <S-TAB> :bprevious<CR>

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>
