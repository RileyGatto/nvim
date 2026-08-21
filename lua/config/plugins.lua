require("lazy").setup({
  spec = {
    { import = "config.plugins.ui" },
    { import = "config.plugins.harpoon" },
    { import = "config.plugins.telescope" },
    { import = "config.plugins.treesitter" },
    { import = "config.plugins.nvim-cmp" },
    { import = "config.plugins.lualine" },
    { import = "config.plugins.toggleterm" }
  },
})
