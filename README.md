# nvim
<a href="https://dotfyle.com/RileyGatto/nvim"><img src="https://dotfyle.com/RileyGatto/nvim/badges/plugins?style=flat" /></a>
<a href="https://dotfyle.com/RileyGatto/nvim"><img src="https://dotfyle.com/RileyGatto/nvim/badges/leaderkey?style=flat" /></a>
<a href="https://dotfyle.com/RileyGatto/nvim"><img src="https://dotfyle.com/RileyGatto/nvim/badges/plugin-manager?style=flat" /></a>

## Overview
This repositiory stores my nvim configuration files. If you are not Riley Gatto please feel free to
follow the installation guide. If you are new to nvim I advise you to customise and build your own
configuration files so you gain experience and a deeper understanding of nvim / lua.

- init.lua = Base configuration file
- config/plugin.lua = Base plugin file
- plugins/ = contains all my plugins separated into individual files

## Leader Key
The leader key is set to **Space** (`vim.g.mapleader = " "`) in [init.lua](init.lua). Any keymap
below written as `<leader>x` means "press Space, then x". Most keymaps are grouped behind a
mnemonic prefix, e.g. everything starting with `<leader>f` is a telescope *find* action, and
everything starting with `<leader>g` is a *git* action. Press `<leader>` and wait a moment to see
a popup of available keys for the current prefix, this is provided by `which-key.nvim`.

## Installation / Prerequisite 
- [Neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md)

## Setup
### Step 1:
### Windows
```sh
git clone git@github.com:RileyGatto/nvim C:\Users\{YOUR-USERNAME}\AppData\Local\nvim
```
- You may need to create nvim directory

### Linux
```sh
git clone git@github.com:RileyGatto/nvim ~/.config/nvim
```

### Step 2:
Open nvim

## Plugins
Each plugin lives in its own file under `lua/config/plugins/` (named after the plugin), and is
wired up in [plugins.lua](lua/config/plugins.lua).

### colorscheme

+ [Mofiqul/dracula.nvim](https://dotfyle.com/plugins/Mofiqul/dracula.nvim) - the Dracula colorscheme/theme used for the whole editor
### completion

+ [hrsh7th/nvim-cmp](https://dotfyle.com/plugins/hrsh7th/nvim-cmp) - autocomplete popup menu, like VSCode IntelliSense, fed by the LSP, snippets, open buffers and file paths
### editing-support

+ [numToStr/Comment.nvim](https://dotfyle.com/plugins/numToStr/Comment.nvim) - toggle line/block comments (like VSCode's `Ctrl+/`)
+ [windwp/nvim-autopairs](https://dotfyle.com/plugins/windwp/nvim-autopairs) - automatically closes brackets, quotes and parens as you type
+ [lukas-reineke/indent-blankline.nvim](https://dotfyle.com/plugins/lukas-reineke/indent-blankline.nvim) - draws vertical indent guide lines, like VSCode's indentation guides
### file-explorer

+ [nvim-neo-tree/neo-tree.nvim](https://dotfyle.com/plugins/nvim-neo-tree/neo-tree.nvim) - VSCode-style sidebar file tree for browsing and managing project files
### formatter

+ [stevearc/conform.nvim](https://dotfyle.com/plugins/stevearc/conform.nvim) - runs external formatters (stylua, black, prettier, clang-format) on save, like VSCode's "format on save"
### fuzzy-finder

+ [nvim-telescope/telescope.nvim](https://dotfyle.com/plugins/nvim-telescope/telescope.nvim) - fuzzy file/text/buffer search, like VSCode's `Ctrl+P` and `Ctrl+Shift+F` combined
### git

+ [lewis6991/gitsigns.nvim](https://dotfyle.com/plugins/lewis6991/gitsigns.nvim) - git gutter signs, hunk preview/navigation and inline blame, like VSCode's built-in git decorations
### icon

+ [nvim-tree/nvim-web-devicons](https://dotfyle.com/plugins/nvim-tree/nvim-web-devicons) - filetype icons used by neo-tree, bufferline, telescope and lualine
### keymap-helper

+ [folke/which-key.nvim](https://dotfyle.com/plugins/folke/which-key.nvim) - shows a popup of available keybindings as you type a prefix, so you don't have to memorise everything
### lsp

+ [neovim/nvim-lspconfig](https://dotfyle.com/plugins/neovim/nvim-lspconfig) - configures language servers for diagnostics, go-to-definition, hover docs, renaming, etc. (VSCode's language features)
### lsp-installer

+ [williamboman/mason.nvim](https://dotfyle.com/plugins/williamboman/mason.nvim) - installs and manages language servers, linters and formatters (like VSCode's extension marketplace for language tooling), paired with `mason-lspconfig.nvim` to bridge installed servers into `nvim-lspconfig`
### marks

+ [ThePrimeagen/harpoon](https://dotfyle.com/plugins/ThePrimeagen/harpoon) - pins a short list of files for instant jumping back to, faster than re-searching with telescope
### nvim-dev

+ [nvim-lua/plenary.nvim](https://dotfyle.com/plugins/nvim-lua/plenary.nvim) - shared Lua utility library that other plugins (telescope, harpoon, neo-tree) depend on
### plugin-manager

+ [folke/lazy.nvim](https://dotfyle.com/plugins/folke/lazy.nvim) - installs, lazily loads and updates all plugins listed in this README
### snippet

+ [L3MON4D3/LuaSnip](https://dotfyle.com/plugins/L3MON4D3/LuaSnip) - snippet engine that expands code snippets inside the completion menu
### statusline

+ [nvim-lualine/lualine.nvim](https://dotfyle.com/plugins/nvim-lualine/lualine.nvim) - the status line along the bottom of the editor (mode, file, git branch, diagnostics)
### syntax

+ [nvim-treesitter/nvim-treesitter](https://dotfyle.com/plugins/nvim-treesitter/nvim-treesitter) - accurate syntax highlighting and indentation based on real code parsing
### tabline

+ [akinsho/bufferline.nvim](https://dotfyle.com/plugins/akinsho/bufferline.nvim) - VSCode-style buffer tabs along the top of the editor
### terminal-integration

+ [akinsho/toggleterm.nvim](https://dotfyle.com/plugins/akinsho/toggleterm.nvim) - toggleable embedded terminal, like VSCode's integrated terminal panel
## Language Servers

+ bashls
+ clangd
+ cssls
+ html
+ lua_ls
+ omnisharp
+ pyright

## Updating / Maintaining

Plugins are managed by `lazy.nvim`, and the exact installed commit of every plugin is pinned in
[lazy-lock.json](lazy-lock.json) so installs stay reproducible across machines.

### From inside Neovim
- `:Lazy` - opens the plugin manager UI. Press `U` to update everything, `S` to sync (install
  missing / remove unused / update), `C` to check for updates without installing, and `L` to view
  the changelog of what updated.
- `:Lazy update` - update all plugins to their latest allowed version and refresh `lazy-lock.json`.
- `:Lazy sync` - install new plugins, remove ones no longer in the spec, and update existing ones
  (use this after pulling changes to this repo that add/remove a plugin file).
- `:Lazy restore` - reinstall plugins at the exact versions recorded in `lazy-lock.json` (useful
  after a bad update, or when setting this config up on a new machine).
- `:Mason` - opens the LSP/formatter installer UI to add, remove or update language servers and
  formatters (e.g. `stylua`, `black`, `prettier`, `clang-format`) independently of the plugins
  themselves.
- `:checkhealth` - diagnoses missing dependencies (Node, Python, compilers, etc.) for plugins and
  the LSP.

### From the command line (headless, e.g. for a quick refresh/CI)
```sh
nvim --headless "+Lazy! sync" +qa
```

After updating, commit the refreshed `lazy-lock.json` so the new versions are reproducible for
anyone else using this config.

## Keymaps
### General
| Mode | Keystroke  | Action                                               |
| ---- | ---------- | ---------------------------------------------------- |
| n,v  | <leader>y  | yank to system clipboard                             |
| n,v  | <leader>p  | paste from system clipboard                          |

### Neo-tree (file explorer)
| Mode | Keystroke  | Action                           |
| ---- | ---------- | --------------------------------- |
| n    | <leader>ee | Toggle file explorer              |
| n    | <leader>ef | Reveal current file in explorer   |

### Harpoon
| Mode | Keystroke  | Action                     |
| ---- | ---------- | -------------------------- |
| n    | <leader>a  | Add file to harpoon buffer |
| n    | <leader>he | Toggle quick menu          |
| n    | <leader>1  | Select file 1              |
| n    | <leader>2  | Select file 2              |
| n    | <leader>3  | Select file 3              |

### telescope
| Mode | Keystroke  | Action                       |
| ---- | ---------- | ----------------------------- |
| n    | <leader>f  | Find files                    |
| n    | <leader>ff | Find git-tracked files         |
| n    | <leader>fg | Live grep (search in files)    |
| n    | <leader>fb | List open buffers              |
| n    | <leader>fh | Search help tags                |

### gitsigns
| Mode | Keystroke  | Action                     |
| ---- | ---------- | -------------------------- |
| n    | <leader>gp | Preview hunk                |
| n    | <leader>gb | Blame current line           |
| n    | ]c         | Next hunk                   |
| n    | [c         | Previous hunk                |

### bufferline (buffer tabs)
| Mode | Keystroke  | Action                     |
| ---- | ---------- | -------------------------- |
| n    | <S-l>      | Next buffer                |
| n    | <S-h>      | Previous buffer             |
| n    | <leader>bd | Close current buffer         |

### formatting (conform.nvim)
| Mode | Keystroke  | Action                     |
| ---- | ---------- | -------------------------- |
| n,v  | <leader>fm | Format buffer/selection     |

Formatting also runs automatically on save for supported filetypes.

### comment (Comment.nvim)
| Mode | Keystroke  | Action                     |
| ---- | ---------- | -------------------------- |
| n    | gcc        | Toggle line comment         |
| v    | gc         | Toggle comment on selection  |

### toggle terminal
| Mode | Keystroke  | Action                     |
| ---- | ---------- | -------------------------- |
| n    | <Ctrl> \   | Open terminal              |


This readme was originally generated by [Dotfyle](https://dotfyle.com) and has since been extended by hand.
