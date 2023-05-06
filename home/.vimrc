set list
set listchars=eol:$,tab:»\ ,space:·
set number
set tabstop=4
set shiftwidth=4


" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g`\"" | endif
endif
