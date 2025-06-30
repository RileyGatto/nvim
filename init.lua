-- Leader key
vim.g.mapleader = " "

-- Load lazy.nvim (Plugin Manager)
local lazypath = vim.fn.stdpath("data") .. "/site/pack/lazy/start/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

-- Load plugins
require("config.plugins")

-- General Options
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.termguicolors = true

-- Key Mappings
vim.keymap.set({"i","v"},"<leader>n", "<Esc>")
vim.keymap.set({"n","v"},"<leader>y", [["+y]])
vim.keymap.set({"n","v"},"<leader>p", [["+p]])

-- Highlight when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("highlight_yank", {}),
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({ higroup = "IncSearch", timeout = 40})
    end,
})


