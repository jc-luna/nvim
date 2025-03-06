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

vim.g.vimtex_quickfix_open_on_warning = 0
opts.mouse = ""

require("plugins.configs.cmp")
require("plugins.configs.lualine")
require("plugins.configs.cmake-tools")
