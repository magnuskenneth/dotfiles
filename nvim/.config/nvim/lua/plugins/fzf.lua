return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local fzf = require("fzf-lua")

    fzf.setup({
      files = {
        actions = {
          ["ctrl-q"] = { fn = fzf.actions.file_sel_to_qf, prefix = "select-all" },
        },
      },
    })

    vim.keymap.set("n", "<leader>ff", fzf.files, {})
    vim.keymap.set("n", "<leader>fb", fzf.buffers, {})
    vim.keymap.set("n", "<leader>fh", fzf.help_tags, {})
    vim.keymap.set("n", "<leader>fg", fzf.live_grep, {})
    vim.keymap.set("n", "<leader>gs", fzf.git_status, {})
  end,
}
