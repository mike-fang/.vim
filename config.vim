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
let g:UltiSnipsExpandTrigger="<tab>"                                            
let g:UltiSnipsJumpForwardTrigger="<tab>"                                       
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

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

