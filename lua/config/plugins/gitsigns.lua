return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({
      current_line_blame = true,
    })

    vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", {})
    vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>", {})
    vim.keymap.set("n", "]c", "<cmd>Gitsigns next_hunk<CR>", {})
    vim.keymap.set("n", "[c", "<cmd>Gitsigns prev_hunk<CR>", {})
  end,
}
