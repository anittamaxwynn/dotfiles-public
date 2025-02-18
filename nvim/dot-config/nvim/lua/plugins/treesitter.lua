return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = {
            "lua",
            "python",
            "c",
            "cpp",
            "rust",
        },
    },
    config = function(_, opts) require("nvim-treesitter.configs").setup(opts) end,
}
