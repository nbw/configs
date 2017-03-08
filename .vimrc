" =======================================================
"     Vim-Plug
" =======================================================
" https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged')
        Plug 'Shougo/unite.vim'
        Plug 'Shougo/vimfiler.vim'
        
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        "        Plug 'Lokaltog/vim-powerline'

        "        Plug 'vim-ruby/vim-ruby'

        Plug 'ctrlpvim/ctrlp.vim'

        Plug 'sheerun/vim-polyglot'
        
        Plug 'w0ng/vim-hybrid'
        
call plug#end()

set background=dark
colorscheme hybrid

"===============================
" VimFiler
nmap <leader>d :VimFilerExplorer<CR>

"==============================
" Powerline
let g:Powerline_symbols = 'fancy'

"=============================
" Airline
let g:airline_section_z = '%2p%% %2l/%L:%2v'
let g:airline#extensions#syntastic#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline_exclude_preview = 1
let g:airline_powerline_fonts=1

" Movement Mappings
" ==============================

" Smart way to move between windows. Ctrl-[h,j,k,l]
" nmap <C-j> <C-W>j
" nmap <C-k> <C-W>k
" nmap <C-h> <C-W>h
" nmap <C-l> <C-W>l

"=============================
"Show line number
set number

"==============================
" Tabs to spaces "
filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start
set nowrap

set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

