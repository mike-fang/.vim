set nocompatible
" Python source venv
"let g:python3_host_prog = expand('$HOME/.vim/neovim3/bin/python')

"filetype off
call plug#begin('~/.vim/plugged')
source ~/.vim/bundles.vim
call plug#end()
"filetype plugin indent on

for f in split(glob('~/.vim/*.vim'))
    exe 'source' f
endfor

" Auto change directory
set autochdir
set autoread

" QF opens new
set switchbuf+=useopen,vsplit

" Use fzf
set rtp+=/usr/local/opt/fzf

" Interactive subsitute
if has('nvim')
	set inccommand=split
endif

" Stop highlight when entering insert mode
autocmd InsertEnter * :noh

" Make -> Open quickfix
autocmd QuickFixCmdPost [^l]* nested bo cwindow
autocmd QuickFixCmdPost    l* nested bo lwindow

" Term mode
autocmd TermOpen * startinsert
