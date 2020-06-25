if echo_source
    echo "Sourcing maps..."
endif
let mapleader=" "
let localmapleader=" "

" Esc to disable highlighting

" Edit config files

"inoremap jk <esc>
nnoremap <leader>eb :tabe ~/.vim/bundles.vim<cr>
nnoremap <leader>ec :tabe ~/.vim/config.vim<cr>
nnoremap <leader>em :tabe ~/.vim/maps.vim<cr>
nnoremap <leader>ea :tabe ~/.vim/appearances.vim<cr>
nnoremap <leader>ev :tabe ~/.vim/vimrc<cr>
nnoremap <leader>ub :VundleUpdate<cr>
nnoremap <leader>et :vsplit TODO<cr>
nnoremap <leader>ep :vsplit scratch_pad.py<cr>
" Source vimrc
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>sb :PlugInstall<cr>:PlugClean<cr>:PlugUpdate<cr>

" Window navigation & manipulation
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l
nnoremap <leader>w <C-w>q
set splitright
set splitbelow
nnoremap <leader>vs :vsplit <cr>
nnoremap <leader>hs :split <cr>

" Open file in new window
nnoremap <leader>f <C-w><C-f>
nnoremap <leader>ee :e .<cr>

" Toggle fold
nnoremap <leader><space> za

nnoremap <leader>mm :wa<cr> :make<cr>

nnoremap <leader>q :bo copen<cr>

" Save and restore session
nnoremap <leader>ss :mksession! ~/temp_vim_session.vim<cr>
nnoremap <leader>sr :source ~/temp_vim_session.vim<cr>

" Selected pasted
nnoremap gp '[V']

" FZF mappings
noremap <leader>a :exe ':Ag ' . expand('<cword>')<CR><Paste>
noremap <leader>hh :History<cr>

" Term mode mapping
nnoremap <leader>t :vsplit term://bash<cr>
tnoremap <Esc> <C-\><C-n>
