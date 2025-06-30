return {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("dracula").setup({
        italic_comment = true,
        transparent_bg = false,
      })
      vim.cmd.colorscheme("dracula")
    end,
}
