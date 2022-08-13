if echo_source
    echo "Sourcing config..."
endif
syntax on
set hls
set autoindent
set ignorecase
set smartcase
set backspace=2

set tabstop=4
set shiftwidth=4
set expandtab


autocmd BufEnter,InsertLeave * :syntax sync fromstart

" Set ultisnips triggers
"let g:UltiSnipsExpandTrigger="<c-e>"                                            
"let g:UltiSnipsJumpForwardTrigger="<c-n>"                                       
"let g:UltiSnipsJumpBackwardTrigger="<c-p>"

" python env
let g:python3_host_prog = expand('$HOME/.vim/env/bin/python')

" delimitMate
let delimitMate_expand_space = 1
let delimitMate_expand_cr = 1
let delimitMate_jump_expansion = 1

" Supertab
let g:SuperTabDefaultCompletionType = "<c-n>"
"let g:SuperTabDefaultCompletionType = "<Tab>"
		
" Jedi
"let g:jedi#auto_initialization = 1
"let g:jedi#completions_enabled = 0
"let g:jedi#auto_vim_configuration = 0
"let g:jedi#smart_auto_mappings = 0
"let g:jedi#popup_on_dot = 0
"let g:jedi#completions_command = ""
"let g:jedi#show_call_signatures = "1"
set completeopt-=preview

" Deoplete
let g:deoplete#enable_at_startup = 1

" Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" NerdTree
let NERDTreeHijackNetrw = 1

" Deoplete
let g:deoplete#sources#jedi#ignore_errors = v:true

" ALE
let g:ale_linters = ['flake8', 'pylint']

" tabs
function! HandleTab() abort
  " First, try to expand or jump on UltiSnips.
  call UltiSnips#ExpandSnippetOrJump()
  if g:ulti_expand_or_jump_res > 0
    return ""
  endif
  " Then, check if we're in a completion menu
  if pumvisible()
    return "\<C-n>"
  endif
  " Then check if we're indenting.
  let col = col('.') - 1
  if !col || getline('.')[col - 1] =~ '\s'
    return "\<Tab>"
  endif
  " Finally, trigger deoplete completion.
  return deoplete#manual_complete()
endfunction

inoremap <silent> <Tab> <C-R>=HandleTab()<CR>
