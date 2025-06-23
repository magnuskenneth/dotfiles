vim.cmd("set expandtab")
vim.cmd("set number")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set ignorecase")
-- vim.cmd("set nohlsearch")

vim.g.background = "light"

vim.opt.swapfile = false
vim.opt.splitright = true

-- Navigate between windows with <C-h>, <C-j>, <C-k>, <C-l>
vim.keymap.set("n", "<c-h>", ":wincmd k<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>", { noremap = true, silent = true })

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>w", "<esc>:w<cr>", { desc = "Save file" }, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>vs", "<esc>:vsplit<cr>", { desc = "Split vertically" }, { noremap = true, silent = true })
vim.keymap.set("n", "<F5>", ":set ignorecase!<CR>", { noremap = true, silent = true })
vim.keymap.set(
	"n",
	"<leader>lg",
	":!tmux new-window -c " .. vim.fn.getcwd() .. " -- lazygit <CR><CR>",
	{ silent = true }
)
