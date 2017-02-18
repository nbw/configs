" =======================================================
"     Vim-Plug
" =======================================================
" https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged')
        Plug 'Shougo/unite.vim'
        Plug 'Shougo/vimfiler.vim'

        Plug 'Lokaltog/vim-powerline'
call plug#end()

" Movement Mappings
" ==============================

" Smart way to move between windows. Ctrl-[h,j,k,l]
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l