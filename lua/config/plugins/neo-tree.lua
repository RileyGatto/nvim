return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      filesystem = {
        follow_current_file = { enabled = true },
        use_libuv_file_watcher = true,
      },
    })

    vim.keymap.set("n", "<leader>ee", "<cmd>Neotree toggle<CR>", {})
    vim.keymap.set("n", "<leader>ef", "<cmd>Neotree reveal<CR>", {})
  end,
}
