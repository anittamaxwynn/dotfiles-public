return {
    "akinsho/horizon.nvim",
    version = "*",
    priority = 1000,
    lazy = false,
    enabled = false,
    config = function()
        require("horizon").setup({})
        vim.cmd([[colorscheme horizon]])
    end,
}
