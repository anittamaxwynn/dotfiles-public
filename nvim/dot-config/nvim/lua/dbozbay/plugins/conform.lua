return {
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		cmd = { "ConformInfo" },
		keys = {
			{
				"<leader>ff",
				function()
					require("conform").format({ async = true })
				end,
				mode = "n",
				desc = "Format buffer",
			},
		},
		opts = {
			formatters_by_ft = {
				python = {
					"ruff_organize_imports",
					"ruff_format",
				},
				lua = { "stylua" },
			},
			default_format_opts = {
				lsp_format = "fallback",
			},
		},
	},
}
