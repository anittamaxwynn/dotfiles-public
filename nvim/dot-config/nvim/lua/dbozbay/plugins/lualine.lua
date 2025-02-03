return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"bwpge/lualine-pretty-path",
	},
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count
    local api = require("supermaven-nvim.api")

		lualine.setup({
      theme = "ayu",
			options = {
				icons_enabled = true,
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch" },
				lualine_c = {
					{
						"pretty_path",
						file_status = true, -- displays file status (readonly status, modified status)
					},
				},
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#ff9e64" },
					},
					{
						"diagnostics",
						sources = { "nvim_diagnostic" },
						symbols = { error = " ", warn = " ", info = " ", hint = " " },
					},
          {
            function()
              if api.is_running() then return "Supermaven ON" else return "Supermaven OFF" end
            end,
            color = { fg = "#ff9e64" },
          }
					-- {
					-- 	"diff",
					-- 	source = function()
					-- 		local gitsigns = vim.b.gitsigns_status_dict
					-- 		if gitsigns then
					-- 			return {
					-- 				added = gitsigns.added,
					-- 				modified = gitsigns.changed,
					-- 				removed = gitsigns.removed,
					-- 			}
					-- 		end
					-- 	end,
					-- },
				},
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {
					{
						"pretty_path",
						file_status = true, -- displays file status (readonly status, modified status)
					},
				},
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			overrides = function(colors)
				local theme = colors.theme
				return {
					Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
					PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
					PmenuSbar = { bg = theme.ui.bg_m1 },
					PmenuThumb = { bg = theme.ui.bg_p2 },
				}
			end,
		})
	end,
}
