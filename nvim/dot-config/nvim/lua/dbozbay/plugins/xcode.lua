return {
	"arzg/vim-colors-xcode",
	priority = 1000,
	enabled = true,
	config = function()
		vim.g.xcodedarkhc_match_paren_style = 1
		vim.cmd.colorscheme("xcodedarkhc")
	end,
}
