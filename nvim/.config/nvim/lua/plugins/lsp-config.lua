return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				automatic_enable = true,
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"html",
					"tailwindcss",
					"eslint",
					"terraformls",
					"svelte",
					"jdtls",
					"intelephense",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilites = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilites,
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilites,
			})
			lspconfig.html.setup({
				capabilities = capabilites,
			})
			lspconfig.tailwindcss.setup({
				capabilities = capabilites,
			})
			lspconfig.eslint.setup({
				capabilities = capabilites,
			})
			lspconfig.terraformls.setup({
				capabilities = capabilites,
			})
			lspconfig.svelte.setup({
				capabilities = capabilites,
			})
			lspconfig.jdtls.setup({
				capabilities = capabilites,
			})
			lspconfig.intelephense.setup({
				capabilities = capabilites,
			})

			-- You will likely want to reduce updatetime which affects CursorHold
			-- note: this setting is global and should be set only once
			vim.o.updatetime = 250
			vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
				group = vim.api.nvim_create_augroup("float_diagnostic", { clear = true }),
				callback = function()
					vim.diagnostic.open_float(nil, { focus = false })
				end,
			})

			-- vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			-- vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			-- vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			-- vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
		end,
	},
}
