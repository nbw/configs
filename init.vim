" Neo vim configs
"
" =======================================================
"     Vim-Plug
" =======================================================
" https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged')
        Plug 'Shougo/unite.vim'
        Plug 'Shougo/vimfiler.vim'

        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'

        Plug 'sheerun/vim-polyglot'

        Plug 'w0ng/vim-hybrid'
        Plug 'rakr/vim-one'
        Plug 'ayu-theme/ayu-vim'

        Plug 'elixir-lang/vim-elixir'

        Plug 'rking/ag.vim'

        Plug 'vim-ruby/vim-ruby'

        Plug 'tpope/vim-rails'
        Plug 'janko-m/vim-test'

        Plug 'thoughtbot/vim-rspec'

        Plug 'tpope/vim-surround'
        Plug 'tpope/vim-commentary'
        Plug 'tpope/vim-fugitive'

        Plug 'craigemery/vim-autotag'

        Plug 'w0rp/ale'

        Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
        Plug 'junegunn/fzf.vim'
call plug#end()

" DARK MODE
set background=dark
colorscheme hybrid

" ONE LIGHT MODE
" set background=light
" colorscheme one
"

" AYU LIGHT MODE
" set termguicolors     " enable true colors support
" let ayucolor="light"  " for light version of theme
" colorscheme ayu


"===============================
" w0ng/vim-hybrid" Mousemode
set mouse=a

"===============================
" VimFiler
" nmap <leader>d :VimFilerExplorer<CR>
nmap <leader>d :VimFilerBufferDir -explorer<CR>

"===============================
" Silver Searcher
nmap <leader>f :Ag<Space>

"===============================
" Fzy search
nmap <C-p> :FZF<CR>
nmap <C-b> :Buffers<CR>


"==============================
" Powerline
"
set encoding=utf-8
set guifont=Source\ Code\ Pro\ for\ Powerline
let g:Powerline_symbols = 'fancy'

"=============================
" Airline
let g:airline_section_z = '%2p%% %2l/%L:%2v'
let g:airline#extensions#syntastic#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline_exclude_preview = 1
" let g:airline_powerline_fonts=1

"===============================
" RGREP - Faster grep
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('rg')
  " Use ripgrep over Grep
  set grepprg=rg\ --vimgrep\ --no-heading
  set grepformat=%f:%l:%c:%m,%f:%l%m

  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'

  " rg is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Movement Mappings
" ==============================

" Smart way to move between windows. Ctrl-[h,j,k,l]
" nmap <C-j> <C-W>j
" nmap <C-k> <C-W>k
" nmap <C-h> <C-W>h
" nmap <C-l> <C-W>l
nmap <C-k> <C-u>
nmap <C-j> <C-d>

"=============================
"Show line number
"
" set relativenumber
set number


"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" Do NOT use a swapfile for the buffer.
set noswapfile

"================================
" UNDO
"
"Undo history
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo


"================================
" Cursor Color
"
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"https://stackoverflow.com/questions/16134457/insert-a-newline-without-entering-in-insert-mode-vim"
nmap oo m`o<Esc>``
nmap OO m`O<Esc>``


"================================
" Copy current file's path using 'cp'
"
nmap cp :let @" = expand("%")<cr>

"==============================
" Tabs to spaces "
filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2 shiftwidth=2 expandtab
set backspace=indent,eol,start
set nowrap

fu! ResetSpaces()
  set tabstop=2 shiftwidth=2 expandtab
  %retab!
endfunction

autocmd BufWritePre *.js,*.ex,*.exs,*.html,*.rb :call ResetSpaces()


"================================
" Remove whitespace on save
"
autocmd BufWritePre * %s/\s\+$//e
runtime macros/matchit.vim


