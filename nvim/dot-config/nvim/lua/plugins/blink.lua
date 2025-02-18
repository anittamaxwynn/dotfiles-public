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
                draw = { treesitter = { "lsp" } },
                -- border = "single",
            },

            documentation = {
                auto_show = true,
                window = { border = "rounded" },
            },
        },

        signature = {
            enabled = true,
            window = { border = "rounded" },
        },
    },
    opts_extend = { "sources.default" },
}
