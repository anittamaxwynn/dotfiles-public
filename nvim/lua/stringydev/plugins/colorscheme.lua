return {
  -- "tanvirtin/monokai.nvim",
  -- priority = 1000,
  -- config = function()
  --   require("monokai").setup({
  --     palette = require("monokai").soda,
  --   })
  --   vim.cmd("colorscheme monokai")
  -- end,
  --
  "polirritmico/monokai-nightasty.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    dark_style_background = "transparent", -- default, dark, transparent, #color
    light_style_background = "default", -- default, dark, transparent, #color
    color_headers = true, -- Enable header colors for each header level (h1, h2, etc.)
    lualine_bold = true, -- Lualine a and z sections font width
    lualine_style = "default", -- "dark", "light" or "default" (Follows dark/light style)
    markdown_header_marks = true, -- Add headers marks highlights (the `#` character) to Treesitter highlight query
    -- Style to be applied to different syntax groups. See `:help nvim_set_hl`
    hl_styles = {
      keywords = { italic = false },
      comments = { italic = true },
      floats = "transparent",
      sidebars = "transparent",
    },
    plugins = {
      ["telescope,nvim"] = true,
    },
  },
  config = function(_, opts)
    -- Highlight line at the cursor position
    vim.opt.cursorline = true

    -- Default to dark theme
    vim.o.background = "dark" -- dark | light

    require("monokai-nightasty").load(opts)

    vim.cmd("colorscheme monokai-nightasty")
  end,
}
