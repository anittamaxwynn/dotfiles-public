return {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    config = function()
        require("onedarkpro").setup({
            plugins = { all = true },
            options = { transparency = true },
            highlights = {
                Comment = { italic = true },
                Directory = { bold = true },
                ErrorMsg = { italic = true, bold = true },
            },
            styles = {
                types = "NONE",
                methods = "NONE",
                numbers = "NONE",
                strings = "NONE",
                comments = "italic",
                keywords = "bold",
                constants = "NONE",
                functions = "bold",
                operators = "NONE",
                variables = "NONE",
                parameters = "NONE",
                conditionals = "italic",
            },
        })
        -- vim.cmd("colorscheme onedark")
    end,
}
