return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "python", "javascript", "html", "css", "c", "cpp", "c_sharp", "markdown", "markdown_inline" },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
