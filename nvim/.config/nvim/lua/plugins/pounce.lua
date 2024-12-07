return {
	{
		"rlane/pounce.nvim",
		config = function()
			-- Keybindings for pounce.nvim
			-- Normal mode: Trigger Pounce search with 's'
			vim.keymap.set("n", "s", "<cmd>Pounce<CR>", { desc = "Pounce search in normal mode" })

			-- Normal mode: Trigger PounceRepeat with 'S'
			vim.keymap.set("n", "S", "<cmd>PounceRepeat<CR>", { desc = "Repeat last Pounce search" })

			-- Visual mode: Trigger Pounce search with 's'
			vim.keymap.set("x", "s", "<cmd>Pounce<CR>", { desc = "Pounce search in visual mode" })

			-- Operator-pending mode: Trigger Pounce search with 'gs'
			vim.keymap.set("o", "gs", "<cmd>Pounce<CR>", { desc = "Pounce search in operator-pending mode" })

			-- Optional: Use 'S' in normal mode with `<C-r>` for Pounce
			vim.keymap.set("n", "S", ":Pounce <C-r>/<CR>", { desc = "Pounce search using <C-r>" })
		end,
	},
}
