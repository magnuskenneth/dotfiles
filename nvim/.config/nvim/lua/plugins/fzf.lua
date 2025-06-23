return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local fzf = require("fzf-lua")

		fzf.setup({
			fzf_bin = nil,
			files = {
				actions = {
					["ctrl-q"] = { fn = fzf.actions.file_sel_to_qf, prefix = "select-all" },
				},
			},
		})

		vim.keymap.set("n", "<leader>ff", fzf.files, {})
		vim.keymap.set("n", "<leader>fb", fzf.buffers, {})
		vim.keymap.set("n", "<leader>fo", fzf.oldfiles, {})
		vim.keymap.set("n", "<leader>fh", fzf.help_tags, {})
		vim.keymap.set("n", "<leader>fg", fzf.live_grep, {})
		vim.keymap.set("n", "<leader>gs", fzf.git_status, {})
		vim.keymap.set("n", "<leader>gc", fzf.git_commits, {})

		-- LSP keymaps using fzf-lua
		vim.keymap.set("n", "<leader>ca", fzf.lsp_code_actions, { desc = "Code actions" })
		vim.keymap.set("n", "<leader>cr", fzf.lsp_references, { desc = "References" })
		vim.keymap.set("n", "<leader>ci", fzf.lsp_implementations, { desc = "Implementations" })
		vim.keymap.set("n", "<leader>ct", fzf.lsp_typedefs, { desc = "Type definitions" })
		vim.keymap.set("n", "<leader>cs", fzf.lsp_document_symbols, { desc = "Document symbols" })
		vim.keymap.set("n", "<leader>cS", fzf.lsp_workspace_symbols, { desc = "Workspace symbols" })
		vim.keymap.set("n", "gd", fzf.lsp_definitions, { desc = "Go to definition" })
		vim.keymap.set("n", "gr", fzf.lsp_references, { desc = "Go to references" })
		vim.keymap.set("n", "gi", fzf.lsp_implementations, { desc = "Go to implementation" })
	end,
}
