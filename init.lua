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


