--stylua: ignore start


-- Global editor settings ===================================================
-- Set leader and local leader inside lazy.lua.
-- vim.g.mapleader      = " "
-- vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

-- Option settings ==========================================================
vim.opt.relativenumber       = true
vim.opt.number               = true

vim.opt.smartindent          = false
vim.opt.autoindent           = true
vim.opt.expandtab            = true

vim.opt.shiftwidth           = 4
vim.opt.tabstop              = 4
vim.opt.softtabstop          = 4

vim.opt.smartcase            = true
vim.opt.ignorecase           = true

vim.opt.hlsearch             = false
vim.opt.incsearch            = true

vim.opt.clipboard           = "unnamedplus"
vim.opt.conceallevel        = 2
vim.opt.cursorline          = true
vim.opt.guicursor           = ""
vim.opt.confirm             = true

vim.opt.splitbelow          = true
vim.opt.splitright          = true

vim.opt.wrap                = false

vim.opt.termguicolors       = true

vim.opt.swapfile            = false
vim.opt.backup              = false

--stylua: ignore end
