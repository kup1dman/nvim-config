return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				ensure_installed = { "ruby", "lua", "javascript", "python" },
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end
	}
}
