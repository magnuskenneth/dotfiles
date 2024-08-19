vim.cmd("set expandtab")
vim.cmd("set number")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
-- vim.cmd("set nohlsearch")

vim.g.background = "light"

vim.opt.swapfile = false

-- Navigate between windows with <C-h>, <C-j>, <C-k>, <C-l>
vim.keymap.set("n", "<c-h>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- vim.keymap.set("n", "<leader>q", ":q<CR>")
-- vim.keymap.set("n", "<leader>Q", ":q!<CR>")

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>w", "<esc>:w<cr>", { desc = "Save file" })
