-- general
vim.cmd([[filetype on]])
vim.cmd([[filetype plugin on]])
vim.cmd([[filetype indent on]])
vim.cmd([[syntax on]])
vim.cmd([[syntax enable]])

-- selection
vim.cmd([[set path+=**]])
vim.cmd([[set wildmenu]])

vim.cmd([[set wildmode=longest:full,full]])
vim.cmd([[set wildignorecase]])
vim.cmd([[set wildignore=\*.git/\*]])
vim.cmd([[set shortmess-=S]])

vim.cmd([[command! MakeTags !ctags -R .]])


-- netrw
vim.cmd([[let g:netrw_banner=0]])           -- disable annoying banner
vim.cmd([[let g:netrw_browse_split=4]])     -- open in prior window
vim.cmd([[let g:netrw_altv=1]])             -- open splits to the right
vim.cmd([[let g:netrw_liststyle=3]])        -- tree view
vim.cmd([[let g:netrw_list_hide=netrw_gitignore#Hide()]])
vim.cmd([[let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+']])

-- cosmetic
vim.cmd([[set cursorcolumn]])
vim.cmd([[set cursorline]])
vim.cmd([[set number]])
vim.cmd([[set relativenumber]])
vim.cmd([[set scrolloff=10]])

vim.cmd([[set nocompatible]])
-- code preferences
vim.cmd([[set shiftwidth=4]])
vim.cmd([[set tabstop=4]])
vim.cmd([[set expandtab]])
vim.cmd([[set nobackup]])
vim.cmd([[set nowrap]])
vim.cmd([[set incsearch]])
vim.cmd([[set ignorecase]])
vim.cmd([[set smartcase]])
vim.cmd([[set showcmd]])
vim.cmd([[set showmode]])
vim.cmd([[set showmatch]])
vim.cmd([[set hlsearch]])
vim.cmd([[set history=1000]])
vim.cmd([[set hidden]])


-- mappings
vim.cmd([[nnoremap gb :ls<CR>:b<Space>]])

-- see marks
-- https://vi.stackexchange.com/questions/8451/is-it-possible-to-have-vim-displaying-the-list-of-available-marks-when-using-mar
vim.cmd([[nnoremap <leader>m :<C-u>marks<CR>:normal! `]])
vim.cmd([[nnoremap <leader>n :<C-u>marks ASDFREWQ<CR>]])
vim.cmd([[nnoremap <leader>b :<C-u>marks ASDFREWQ<CR>:normal! `]])
vim.cmd([[nnoremap <leader>c :delmarks A-Z0-9<CR>]])

