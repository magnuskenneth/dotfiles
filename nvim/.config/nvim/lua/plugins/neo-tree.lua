return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				follow_current_file = true,
				filtered_items = {
					hide_dotfiles = false,
					hide_gitignore = false,
				},
			},
		})
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle reveal left<CR>", {})
	end,
}
