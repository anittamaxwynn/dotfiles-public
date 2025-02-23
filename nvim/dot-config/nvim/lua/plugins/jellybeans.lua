return {
  "wtfox/jellybeans.nvim",
  priority = 1000,
  lazy = false,
  enabled = true,
  opts = {
    transparent = true,
    style = "dark",
    italics = true,
    flat_ui = false,
    plugins = {
      all = false,
      auto = true,
    },
  },
  config = function(_, opts)
    require("jellybeans").setup(opts)
    vim.cmd([[colorscheme jellybeans]])
  end,
}
