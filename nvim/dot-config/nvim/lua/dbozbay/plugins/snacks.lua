return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		indent = { enabled = true },
		bigfile = { enabled = true },
		dashboard = { enabled = true },
		gitbrowse = { enabled = true },
		lazygit = { enabled = true },
		notifier = { enabled = true }, --TODO: look at lsp progress
    notify = { enabled = true },
    --TODO: add rename here
    scroll = { enabled = true },
    statuscolumn = { enabled = true },



	},
	keys = {
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
        Snacks.notifier.get_history()
      end,
      desc = "Notifier History",
    }
	},
}
