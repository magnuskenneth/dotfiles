return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    config = function()
      require("CopilotChat").setup({
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
        "<leader>cp",
        function()
          local actions = require("CopilotChat.actions")
          require("CopilotChat.integrations.fzflua").pick(actions.prompt_actions())
        end,
        desc = "CopilotChat - Prompt actions",
      },
      {
        "<leader>cq",
        function()
          local input = vim.fn.input("quick chat: ")
          if input ~= "" then
            require("CopilotChat").ask(input, { selection = require("copilotchat.select").buffer })
          end
        end,
        desc = "copilotchat - quick chat",
      },
      {
        "<leader>ct",
        function()
          require("CopilotChat").toggle()
        end,
        desc = "CopilotChat - Toggle Chat",
      },
    },
  },
}
