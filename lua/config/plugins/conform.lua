return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        c = { "clang-format" },
        cpp = { "clang-format" },
      },
      format_on_save = {
        timeout_ms = 1000,
        lsp_fallback = true,
      },
    })

    vim.keymap.set({ "n", "v" }, "<leader>fm", function()
      require("conform").format({ lsp_fallback = true })
    end, {})
  end,
}
