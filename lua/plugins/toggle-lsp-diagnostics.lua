return {
  "WhoIsSethDaniel/toggle-lsp-diagnostics.nvim",
  config = function()
    require("toggle_lsp_diagnostics").init({ start_on = false })

    vim.api.nvim_set_keymap("n", "<C-l>", ":ToggleDiag<CR>", { noremap = true, silent = true })

  end,
}
