return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "zbirenbaum/copilot.lua" },
			{ "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
		},
		config = function()
			require("CopilotChat").setup({
				model = "claude-3.7-sonnet", -- Set Claude 3.7 Sonnet as the model
				mappings = {
					reset = {
						normal = "<leader>cr",
						detail = "Reset Chat",
					},
				},
			})
		end,
		keys = {
			{
				"<leader>zc",
				mode = { "n", "v" },
				function()
					local actions = require("CopilotChat.actions")
					require("CopilotChat.integrations.fzflua").pick(actions.prompt_actions())
				end,
				desc = "CopilotChat - Prompt actions",
			},
			{
				"<leader>zq",
				mode = { "n", "v" },
				function()
					local input = vim.fn.input("quick chat: ")
					if input ~= "" then
						require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
					end
				end,
				desc = "copilotchat - quick chat",
			},
			{
				"<leader>zt",
				mode = { "n", "v" },
				function()
					require("CopilotChat").toggle()
				end,
				desc = "CopilotChat - Toggle Chat",
			},
		},
	},
}
