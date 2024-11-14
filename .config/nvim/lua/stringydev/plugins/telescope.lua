return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-telescope/telescope-file-browser.nvim",
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local fb_actions = require("telescope").extensions.file_browser.actions

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
      pickers = {
        find_files = { no_ignore = true },
      },
      extensions = {
        file_browser = {
          theme = "dropdown",
          -- disables netrw and use telescope-file-browser in its place
          hijack_netrw = true,
          initial_mode = "normal",
          hidden = true,
          grouped = true,
          previewer = false,
          respect_gitignore = false,
          layout_config = { height = 40 },
          mappings = {
            ["n"] = {
              ["n"] = fb_actions.create,
              ["h"] = fb_actions.goto_parent_dir,
              ["l"] = actions.select_default,
              ["<C-u>"] = actions.preview_scrolling_up,
              ["<C-d>"] = actions.preview_scrolling_down,
              ["/"] = function()
                vim.cmd("startinsert")
              end,
            },
          },
        },
      },
    })

    require("telescope").load_extension("fzf")
    require("telescope").load_extension("file_browser")

    vim.keymap.set("n", ";f", "<cmd>Telescope find_files<cr>", { desc = "Find files (Root Dir)" })
    vim.keymap.set("n", ";g", "<cmd>Telescope git_files<cr>", { desc = "Find files (git-files)" })
    vim.keymap.set("n", ";s", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
    vim.keymap.set("n", ";e", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")

    vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Recent files" })
    vim.keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics<cr>", { desc = "Find diagnostics" })
    vim.keymap.set("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Find key maps" })
    vim.keymap.set("n", "<leader>fc", "<cmd>Telescope autocommands<cr>", { desc = "Find autocommands" })
    vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Todo List" })
    vim.keymap.set("n", "<leader>fq", "<cmd>Telescope quickfix<cr>", { desc = "Quickfix List" })
    vim.keymap.set("n", "<leader>fb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Search buffer" })
  end,
}
