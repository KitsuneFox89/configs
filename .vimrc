call pathogen#infect()
syntax on
filetype plugin indent on
set background=dark
colorscheme solarized

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

" Enable centralized, persistent undo
set backup
set backupcopy=auto
set backupdir=~/vimundo,.

if v:version >= 703
    set undofile
    let &undodir=&backupdir
endif
