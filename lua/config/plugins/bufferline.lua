return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup({
      options = {
        diagnostics = "nvim_lsp",
        offsets = {
          { filetype = "neo-tree", text = "File Explorer", highlight = "Directory", text_align = "left" },
        },
      },
    })

    vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>", {})
    vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>", {})
    vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", {})
  end,
}
