return {
    "navarasu/onedark.nvim",
    priority = 1000,
    lazy = false,
    enabled = false,
    opts = {
        style = "warmer",
        transparent = true,
    },
    config = function(_, opts)
        require("onedark").setup(opts)
        vim.cmd([[colorscheme onedark]])
    end,
}
