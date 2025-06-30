return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "python", "javascript", "html", "css", "c", "cpp", "c_sharp" },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
