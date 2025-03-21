require("settings.theme")
require("settings.keymaps")
require("plugins.configs.lsp")

local opts = vim.opt

vim.cmd.colorscheme "catppuccin-mocha"

opts.cursorline = true
opts.number = true
opts.termguicolors = true

-- Tab Settings
opts.tabstop = 4
opts.softtabstop = 4
opts.shiftwidth = 4

opts.mouse = ""

require("plugins.configs.cmp")
require("plugins.configs.lualine")
--require("plugins.configs.roblox.luau-tree")
--require("plugins.configs.roblox.rojo")
require("plugins.configs.cmake-tools")
