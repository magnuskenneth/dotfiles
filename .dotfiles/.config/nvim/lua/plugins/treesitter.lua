return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      auto_install = true,
      ensure_installed = { "lua", "javascript", "typescript", "html", "css" },
      -- sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },  
    })
  end
}
