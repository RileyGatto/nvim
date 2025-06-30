return {
  "akinsho/toggleterm.nvim",
  version = "*", -- or a specific tag/release
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<c-\>]],
      direction = "horizontal", -- or "vertical" or "float"
    })
  end,
}

