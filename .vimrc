syntax on
filetype plugin indent on
filetype plugin on
set number
set autoindent
set hlsearch
set ruler
set smartindent
set incsearch
set nowrap

" colorscheme wal
" colorscheme hemisu
" colorscheme noctu
" colorscheme nord
" colorscheme kuroi 
colorscheme gruvbox
set background=dark
hi Normal guibg=NONE ctermbg=NONE

highlight Pmenu ctermfg=14 ctermbg=60 

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4 softtabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab

" StatusLine
set laststatus=2
hi StatusLine ctermbg=59 ctermfg=white

" Spell check keybinng
nnoremap <silent> spell :set spell spelllang=en_us

" clipbord
set clipboard=unnamed

" highlisght cursor line
set cursorline
highlight clear CursorLineNR
highlight CursorLineNR term=bold ctermfg=3 gui=bold guifg=yellow

" Visual mode color
hi Visual  term=reverse cterm=reverse guibg=Gray


"======== OCAML =============
" OCaml Merlin
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
     execute "set rtp+=" . g:opamshare . "/merlin/vim"
nnoremap <silent> m :MerlinTypeOf<CR>
   
" Ocaml indent
set rtp^="/Users/Martino/.opam/4.06.1/share/ocp-indent/vim"
:nnoremap <silent> <CR> :nohlsearch<CR><CR>.
"===========================

" Mouse point
set mouse=a

call plug#begin()
"    Plug 'arcticicestudio/nord-vim'
    Plug 'dense-analysis/ale'
    Plug 'preservim/nerdtree'
    Plug 'aonemd/kuroi.vim'
    Plug 'noahfrederick/vim-noctu'
    Plug 'dylanaraps/wal.vim'
call plug#end()

let python_highlight_all=1
let g:ale_linters = {'python': ['flake8']}

nmap <C-n> :NERDTreeToggle<CR>
nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1

set rtp+=~/.vim/bundle/tabnine-vim

" TEMPLATES
"
:autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp
:autocmd BufNewFile *.cc 0r ~/.vim/templates/skeleton.cpp
