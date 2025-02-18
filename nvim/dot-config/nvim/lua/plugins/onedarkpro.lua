return {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    config = function()
        local color = require("onedarkpro.helpers")
        local white = color.get_colors().white

        require("onedarkpro").setup({
            colors = {
                my_comment = "#5d5d5d",
            },
            options = {
                transparency = true,
            },
            highlights = {
                ["@variable"] = { fg = white },
                -- ["@function"] = { fg = white },
                Comment = { fg = "${my_comment}", italic = true },
            },
        })
        vim.cmd("colorscheme onedark")
    end,
}
