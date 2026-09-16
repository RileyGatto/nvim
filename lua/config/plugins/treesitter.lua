-- On Neovim 0.12, nvim-treesitter's injection predicates
-- (set-lang-from-info-string!, set-lang-from-mimetype!, downcase!) crash
-- because core now passes captured nodes wrapped in a list instead of bare,
-- and the plugin's `master` branch (frozen, no longer patched upstream)
-- calls node:range() on that list directly. Unwrap defensively before
-- nvim-treesitter's own setup() re-registers these directives.
local function patch_query_predicates()
    local query = require("vim.treesitter.query")
    local opts = { force = true, all = false }

    local html_script_type_languages = {
        ["importmap"] = "json",
        ["module"] = "javascript",
        ["application/ecmascript"] = "javascript",
        ["text/ecmascript"] = "javascript",
    }
    local non_filetype_match_injection_language_aliases = {
        ex = "elixir",
        pl = "perl",
        sh = "bash",
        uxn = "uxntal",
        ts = "typescript",
    }

    local function unwrap(node)
        if type(node) == "table" then
            return node[1]
        end
        return node
    end

    local function get_parser_from_markdown_info_string(injection_alias)
        local match = vim.filetype.match({ filename = "a." .. injection_alias })
        return match or non_filetype_match_injection_language_aliases[injection_alias] or injection_alias
    end

    query.add_directive("set-lang-from-mimetype!", function(match, _, bufnr, pred, metadata)
        local node = unwrap(match[pred[2]])
        if not node then
            return
        end
        local type_attr_value = vim.treesitter.get_node_text(node, bufnr)
        local configured = html_script_type_languages[type_attr_value]
        if configured then
            metadata["injection.language"] = configured
        else
            local parts = vim.split(type_attr_value, "/", {})
            metadata["injection.language"] = parts[#parts]
        end
    end, opts)

    query.add_directive("set-lang-from-info-string!", function(match, _, bufnr, pred, metadata)
        local node = unwrap(match[pred[2]])
        if not node then
            return
        end
        local injection_alias = vim.treesitter.get_node_text(node, bufnr):lower()
        metadata["injection.language"] = get_parser_from_markdown_info_string(injection_alias)
    end, opts)

    query.add_directive("downcase!", function(match, _, bufnr, pred, metadata)
        local id = pred[2]
        local node = unwrap(match[id])
        if not node then
            return
        end
        local text = vim.treesitter.get_node_text(node, bufnr, { metadata = metadata[id] }) or ""
        metadata[id] = metadata[id] or {}
        metadata[id].text = string.lower(text)
    end, opts)
end

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
        patch_query_predicates()
    end,
}
