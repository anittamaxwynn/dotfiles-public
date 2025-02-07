return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
        "nvim-lua/plenary.nvim",
    },
    enabled = false,
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            layout_strategy = "horizontal",
            layout_config = { prompt_position = "top" },
            sorting_strategy = "ascending",
            wrap_results = true,
            winblend = 0,
            defaults = {
                path_display = { "smart" },
                mappings = {
                    ["i"] = {
                        ["<esc>"] = actions.close,
                    },
                },
            },
        })

        require("telescope").load_extension("fzf")

        vim.keymap.set("n", ";f", "<cmd>Telescope find_files<cr>", { desc = "Find files (Root Dir)" })
        vim.keymap.set("n", ";g", "<cmd>Telescope git_files<cr>", { desc = "Find files (git-files)" })
        vim.keymap.set("n", ";s", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })

        vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Recent files" })
        vim.keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics<cr>", { desc = "Find diagnostics" })
        vim.keymap.set("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Find key maps" })
        vim.keymap.set("n", "<leader>fc", "<cmd>Telescope autocommands<cr>", { desc = "Find autocommands" })
        vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Todo List" })
        vim.keymap.set("n", "<leader>fq", "<cmd>Telescope quickfix<cr>", { desc = "Quickfix List" })
        vim.keymap.set("n", "<leader>fb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Search buffer" })
    end,
}
