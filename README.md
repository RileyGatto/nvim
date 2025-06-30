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
- plugin manager =  LazyVim
- leaderkey = space

## Installation / Prerequisite 
- [Neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md)
- [NodeJS](https://nodejs.org/en)
- [Python](https://www.python.org/)

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

## Keymaps
### General
| Mode | Keystroke  | Action                                               |
| ---- | ---------- | ---------------------------------------------------- |
| i,v  | <leader>n  | Switch to normal mode                                |
| n,v  | <leader>y  | yank to system clipboard                             |
| n,v  | <leader>p  | paste from system clipboard                          |

### Harpoon
| Mode | Keystroke  | Action                     |
| ---- | ---------- | -------------------------- |
| n    | <leader>a  | Add file to harpoon buffer |
| n    | <ctrl>e    | Toggle quick menu          |
| n    | <ctrl>1    | Select file 1              |
| n    | <ctrl>2    | Select file 2              |
| n    | <ctrl>3    | Select file 3              |

### telescope
| Mode | Keystroke  | Action                     |
| ---- | ---------- | -------------------------- |
| n    | <leader>ff | Open directory explorer    |

### toggle terminal
| Mode | Keystroke  | Action                     |
| ---- | ---------- | -------------------------- |
| n    | <Ctrl>\    | Open terminal              |

## Plugins
### Dracula Colour Theme
- [Mofiqul/dracula.nvim](https://github.com/Mofiqul/dracula.nvim)

### Harpoon
- [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)

### LSP
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- 

