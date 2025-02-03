return {
	"olimorris/onedarkpro.nvim",
	priority = 1000,
	config = function()
		require("onedarkpro").setup({
			options = { transparency = true },
			highlights = {
				Comment = { italic = true },
				Directory = { bold = true },
				ErrorMsg = { italic = true, bold = true },
			},
		})
		vim.cmd("colorscheme onedark")
	end,
}
