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
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local lsp_servers = { "lua_ls", "bashls", "pyright", "clangd", "omnisharp", "html", "cssls", "ts_ls" }

    -- Must setup mason.nvim first
    mason.setup()

    -- Then setup mason-lspconfig
    mason_lspconfig.setup({
      ensure_installed = lsp_servers,
      automatic_installation = true,
    })

    -- Enable virtual text, signs, underline diagnostics globally
    vim.diagnostic.config({
      virtual_text = {
        prefix = "--", -- Could be '●', '■', '▎', etc.
        spacing = 2,
      },
      signs = true,
      underline = true,
      update_in_insert = false, -- Update diagnostics when leaving insert mode
      severity_sort = true,
      float = {
        border = "rounded",
        source = "always", -- Show source in floating window
        header = "",
        prefix = "",
      },
    })

    local capabilities = cmp_nvim_lsp.default_capabilities()
    
    --Show diagonstics popup on CursorHold	
    vim.api.nvim_create_autocmd("CursorHold", {
      callback = function()
        vim.diagnostic.open_float(nil, { focusable = false })
      end,
    })

    mason_lspconfig.setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities,
          on_attach = function(client, bufnr)
            -- Optional: keymaps or anything on LSP attach, if you want
          end,
        })
      end,
    })
  end,
}

