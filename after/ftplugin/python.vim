if !exists("current_compiler")
  compiler python
endif
nnoremap <leader>ll :wa<cr>:tabe term://python %<cr>
nnoremap <leader>kk :wa<cr>:tabe term://python % 
