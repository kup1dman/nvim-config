return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = { "ruby", "lua", "javascript", "python", "c", "lua", "vim", "vimdoc", "query" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}
