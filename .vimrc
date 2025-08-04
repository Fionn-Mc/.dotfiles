packadd netrw


filetype on
filetype plugin on
filetype indent on
syntax on
syntax enable

set path+=**
set wildmenu

set wildmode=longest:full,full
set wildignorecase
set wildignore=\*.git/\*

command! MakeTags !ctags -R .



let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'


set cursorcolumn
set cursorline
set nocompatible
set number
set relativenumber
set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set history=1000
set hidden
nnoremap gb :ls<CR>:b<Space>
