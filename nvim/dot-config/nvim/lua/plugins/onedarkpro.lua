return {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        plugins = { all = true },
        options = { transparency = true },
        highlights = {
            Comment = { italic = true },
            Directory = { bold = true },
            ErrorMsg = { italic = true, bold = true },
        },
        -- styles = {
        --     types = "NONE",
        --     methods = "NONE",
        --     numbers = "NONE",
        --     strings = "NONE",
        --     comments = "italic",
        --     keywords = "bold",
        --     constants = "NONE",
        --     functions = "bold",
        --     operators = "NONE",
        --     variables = "NONE",
        --     parameters = "NONE",
        --     conditionals = "italic",
        -- },
    },
    config = function(_, opts)
        require("onedarkpro").setup(opts)
        -- vim.cmd([[colorscheme onedark]])
    end,

}
