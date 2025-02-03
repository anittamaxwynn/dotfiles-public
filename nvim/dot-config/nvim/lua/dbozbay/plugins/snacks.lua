return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		bigfile = { enabled = true },
		dashboard = { enabled = true },
		gitbrowse = { enabled = true },
		lazygit = { enabled = true },
		notifier = { enabled = true }, --TODO: look at lsp progress
		notify = { enabled = true },
		git = { enabled = true },
		--TODO: add rename here
		scroll = { enabled = true },
		statuscolumn = { enabled = true },
		words = { enabled = true },
		styles = {
			enabled = true,
			notification = {
				wo = {
					wrap = true,
				},
			},
		},
		explorer = {
			enabled = true,
			replace_netrw = true,
		},
	},
	keys = {
		{
			";e",
			function()
				Snacks.explorer()
			end,
		},

		{
			"<leader>gB",
			function()
				Snacks.gitbrowse()
			end,
			desc = "Git Browse",
		},

		{
			"<leader>lg",
			function()
				Snacks.lazygit()
			end,
			desc = "Lazygit",
		},

		{
			"<leader>n",
			function()
				Snacks.notifier.show_history()
			end,
			desc = "Notifier History",
		},

		{
			"]]",
			function()
				Snacks.words.jump(vim.v.count1)
			end,
			desc = "Next Reference",
			mode = { "n", "t" },
		},

		{
			"[[",
			function()
				Snacks.words.jump(-vim.v.count1)
			end,
			desc = "Previous Reference",
			mode = { "n", "t" },
		},
	},
}
