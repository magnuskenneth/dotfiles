return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      panel = {
        auto_refresh = true,
      },
      suggestion = {
        auto_trigger = true,
        keymap = {
          -- accept = "<Tab>",
          accept = "<C-j>",
          next = "<C-n>",
          prev = "<C-p>",
          accept_word = "<C-w>",
          accept_line = "<C-l>",
        },
      },
      ["*"] = true, -- If you add "*" as a filetype, the default configuration for filetypes won't be used anymore. e.g.
    })
  end,
}
