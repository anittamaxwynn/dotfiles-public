return {
    "wtfox/jellybeans.nvim",
    priority = 1000,
    lazy = false,
    enabled = false,
    opts = {
        transparent = true,
        style = "dark",
        italics = true,
    },
    config = function(_, opts)
        require("jellybeans").setup(opts)
        vim.cmd([[colorscheme jellybeans]])
    end,
}
