return {
	"saghen/blink.cmp",
	dependencies = "rafamadriz/friendly-snippets",
	version = "*",
	opts = {
		keymap = {
			preset = "default",
			["<C-u>"] = { "scroll_documentation_up", "fallback" },
			["<C-d>"] = { "scroll_documentation_down", "fallback" },
		},

		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},

		sources = {
			default = { "lazydev", "lsp", "path", "snippets", "buffer" },
			providers = {
				lazydev = {
					name = "LazyDev",
					module = "lazydev.integrations.blink",
					-- make lazydev completions top priority (see `:h blink.cmp`)
					score_offset = 100,
				},
			},
		},

		completion = {
			accept = {
				auto_brackets = {
					enabled = true,
				},
			},

			menu = {
				-- border = "rounded",
				-- Label text with lsp source
				draw = {
					treesitter = { "lsp" },
				},
			},

			-- Show documentation when selecting a completion item
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 200,
				window = { border = "rounded" },
			},
		},

		-- Experimental signature help support
		signature = {
			enabled = true,
			window = { border = "rounded" },
		},
	},
}
