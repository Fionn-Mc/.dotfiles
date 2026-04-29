-- selection
vim.opt.path:append("**")
vim.o.wildmode = "longest:full,full"
vim.o.wildignorecase = true
vim.opt.wildignore = { "*.git/*" }
vim.opt.shortmess:remove("S")

vim.api.nvim_create_user_command("MakeTags", "!ctags -R .", {})

-- netrw
vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 4
vim.g.netrw_altv = 1
vim.g.netrw_liststyle = 3
vim.g.netrw_list_hide = vim.fn["netrw_gitignore#Hide"]() .. [[,\(^\|\s\s\)\zs\.\S\+]]

-- cosmetic
vim.o.cursorcolumn = true
vim.o.cursorline = true
vim.o.number = true
vim.o.relativenumber = true

-- code preferences
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.backup = false
vim.o.wrap = false
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.showmatch = true

-- mappings
vim.keymap.set("n", "gb", ":ls<CR>:b ")

-- see marks
-- https://vi.stackexchange.com/questions/8451/is-it-possible-to-have-vim-displaying-the-list-of-available-marks-when-using-mar
vim.keymap.set("n", "<leader>m", ":<C-u>marks<CR>:normal! `")
vim.keymap.set("n", "<leader>n", ":<C-u>marks ASDFREWQ<CR>")
vim.keymap.set("n", "<leader>b", ":<C-u>marks ASDFREWQ<CR>:normal! `")
vim.keymap.set("n", "<leader>c", ":delmarks A-Z0-9<CR>")

