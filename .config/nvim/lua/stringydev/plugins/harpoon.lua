return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup({
      settings = {
        save_on_toggle = true,
      },
    })
    local toggle_opts = {
      border = "rounded",
      title_pos = "center",
      ui_width_ratio = 0.40,
    }

    vim.keymap.set("n", ";a", function()
      harpoon.ui:toggle_quick_menu(harpoon:list(), toggle_opts)
    end)

    vim.keymap.set("n", "mm", function()
      harpoon:list():add()
    end)

    vim.keymap.set("n", ";1", function()
      harpoon:list():select(1)
    end)
    vim.keymap.set("n", ";2", function()
      harpoon:list():select(2)
    end)
    vim.keymap.set("n", ";3", function()
      harpoon:list():select(3)
    end)
    vim.keymap.set("n", ";4", function()
      harpoon:list():select(4)
    end)
  end,
}
