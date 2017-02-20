" =======================================================
"     Vim-Plug
" =======================================================
" https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged')
        Plug 'Shougo/unite.vim'
        Plug 'Shougo/vimfiler.vim'

        Plug 'Lokaltog/vim-powerline'

        "        Plug 'vim-ruby/vim-ruby'

        Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

"===============================
" VimFiler
nmap <leader>d :VimFilerExplorer<CR>

"==============================
" Powerline
let g:Powerline_symbols = 'fancy'

" Movement Mappings
" ==============================

" Smart way to move between windows. Ctrl-[h,j,k,l]
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

"=============================
"Show line number
set number

"==============================
" Tabs to spaces "
filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" " when indenting with '>', use 2 spaces width
set shiftwidth=2
" " On pressing tab, insert 4 spaces
set expandtab
