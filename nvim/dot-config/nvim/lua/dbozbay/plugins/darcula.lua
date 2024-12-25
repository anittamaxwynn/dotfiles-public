return {
	"xiantang/darcula-dark.nvim",
	config = function()
		require("darcula").setup({
			override = function(c)
				return {
					background = "none",
					dark = "none",
				}
			end,
			opt = {
				integrations = {
					telescope = false,
					lualine = true,
					lsp_semantics_token = true,
					nvim_cmp = true,
					dap_nvim = true,
				},
			},
		})
	end,
}
