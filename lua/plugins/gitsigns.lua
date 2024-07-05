return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({
			on_attach = function(bufnr)
				local gitsigns = require("gitsigns")

				local function map(mode, l, r, opts)
					opts = opts or {}
					opts.buffer = bufnr
					vim.keymap.set(mode, l, r, opts)
				end

				-- Navigation
				map("n", "]c", function()
					if vim.wo.diff then
						vim.cmd.normal({ "]c", bang = true })
					else
						gitsigns.nav_hunk("next")
					end
				end)

				map("n", "[c", function()
					if vim.wo.diff then
						vim.cmd.normal({ "[c", bang = true })
					else
						gitsigns.nav_hunk("prev")
					end
				end)

				-- Удаляет изменения
				map("n", "<leader>hr", gitsigns.reset_hunk)
				map("v", "<leader>hr", function()
					gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
				end)
				-- Просмотр изменений, открывает окошко под измененными строчками (как в RubyMine)
				map("n", "<leader>hp", gitsigns.preview_hunk)
				-- Просмотр истории гита, показывает полностью коммит
				map("n", "<leader>hb", function()
					gitsigns.blame_line({ full = true })
				end)
				-- Просмотр истории гита, возле каждой строчки его сопуствующий коммит
				map("n", "<leader>tb", gitsigns.toggle_current_line_blame)
				-- Просмотр изменений, открывает окно с пред. версией кода
				map("n", "<leader>hd", gitsigns.diffthis)
				-- Просмотр удаленного, добавляет удаленную строчку вверх
				map("n", "<leader>td", gitsigns.toggle_deleted)
			end,
		})
	end,
}
