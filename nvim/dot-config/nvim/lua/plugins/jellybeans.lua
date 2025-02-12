return {
    "wtfox/jellybeans.nvim",
    priority = 1000,
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
