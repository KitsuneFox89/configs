call pathogen#infect()
syntax enable
filetype plugin indent on
au BufNewFile,BufRead *.cuf set filetype=fortran

" Powerline
" python from powerline.ext.vim import source_plugin; source_plugin()

" correct tabbing and support pasting without messing up
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set shiftround
set copyindent
set preserveindent
set autoindent

set nowrap

" Line endings for Windows
" set ffs=dos
" set ffs=unix

set number

" Enable centralized, persistent undo
set backup
set backupcopy=auto
set backupdir=~/vimundo,.

if v:version >= 703
    set undofile
    let &undodir=&backupdir
endif

let g:clang_use_library=1

" set vim to use system clipboard
set clipboard=unnamedplus
" Remap copy, cut and paste to use system clipboard
nnoremap y "+y
vnoremap y "+y 
nnoremap d "+d
vnoremap d "+d 
nnoremap p "+p
vnoremap p "+p 

set foldmethod=marker

" Correct syntax highlighting for FORTRAN 90
let s:extfname = expand("%:e")
if s:extfname ==? "f90" || s:extfname ==? "cuf"
    let fortran_free_source=1
    unlet! fortran_fixed_source
else
    let fortran_fixed_source=1
    unlet! fortran_free_source
endif

let g:solarized_termtrans=1
colorscheme solarized
set background=dark

