return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local lsp_servers = { "lua_ls", "bashls", "pyright", "clangd", "omnisharp", "html", "cssls", "ts_ls" }

    mason.setup()
    mason_lspconfig.setup({
      ensure_installed = lsp_servers,
      automatic_installation = true,
    })

    vim.diagnostic.config({
      virtual_text = { prefix = "--", spacing = 2 },
      signs = true,
      underline = true,
      update_in_insert = false,
      severity_sort = true,
      float = { border = "rounded", source = "always", header = "", prefix = "" },
    })

    local capabilities = cmp_nvim_lsp.default_capabilities()

    vim.api.nvim_create_autocmd("CursorHold", {
      callback = function()
        vim.diagnostic.open_float(nil, { focusable = false })
      end,
    })

    mason_lspconfig.setup_handlers({
      function(server_name)
        vim.lsp.config(server_name, {
          capabilities = capabilities,
          on_attach = function(client, bufnr)
            -- Optional keymaps or LSP attach logic
          end,
        })
      end,
    })
  end,
}