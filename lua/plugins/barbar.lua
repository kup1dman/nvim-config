return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim",   -- OPTIONAL: for git status
    "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
  },
  config = function()
    require("barbar").setup()
    vim.api.nvim_set_keymap("n", "<C-q>", ":BufferPrevious<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<C-e>", ":BufferNext<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<C-p>", ":BufferPin<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<C-c>", ":BufferClose<CR>", { noremap = true, silent = true })
  end,
}
