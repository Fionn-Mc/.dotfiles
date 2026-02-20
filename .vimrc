packadd netrw

" general
filetype on
filetype plugin on
filetype indent on
syntax on
syntax enable

" selection
set path+=**
set wildmenu

set wildmode=longest:full,full
set wildignorecase
set wildignore=\*.git/\*
set shortmess-=S

command! MakeTags !ctags -R .


" netrw
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" cosmetic
set cursorcolumn
set cursorline
set number
set relativenumber
set scrolloff=10

set nocompatible
" code preferences
set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
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


" mappings
nnoremap gb :ls<CR>:b<Space>

" see marks
" https://vi.stackexchange.com/questions/8451/is-it-possible-to-have-vim-displaying-the-list-of-available-marks-when-using-mar
nnoremap <leader>m :<C-u>marks<CR>:normal! `
nnoremap <leader>n :<C-u>marks ASDFREWQ<CR>
nnoremap <leader>b :<C-u>marks ASDFREWQ<CR>:normal! `
nnoremap <leader>c :delmarks A-Z0-9<CR>

