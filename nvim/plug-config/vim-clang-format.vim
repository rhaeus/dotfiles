" When this variable's value is 1, vim-clang-format automatically detects the style file like 
" .clang-format or _clang-format and applies the style to formatting.
let g:clang_format#detect_style_file=1
" When the value is 1, a current buffer is automatically formatted on saving the buffer. Formatting is executed on BufWritePre event.
let g:clang_format#auto_format=1
" When the value is 1, inserted lines are automatically formatted on leaving insert mode. Formatting is executed on InsertLeave event.
" let g:clang_format#auto_format_on_insert_leave=1

map <leader>cf :ClangFormat<cr>

