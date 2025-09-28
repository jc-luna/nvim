vim.loader.enable()

require("settings.keymaps")

-- Theming
require("settings.theme")
vim.cmd.colorscheme("catppuccin-mocha")

vim.cmd.highlight("Normal guibg = none")
vim.cmd.highlight("NonText guibg = none")
vim.cmd.highlight("Normal cterm = none")
vim.cmd.highlight("NonText cterm = none")

vim.cmd.highlight("TabLine guibg = none")
vim.cmd.highlight("TabLineFill guibg = none")

local opts = vim.opt
opts.relativenumber = true
opts.number = true
opts.termguicolors = true
opts.showtabline = 2

-- Tab Settings
opts.tabstop = 4
opts.softtabstop = 4
opts.shiftwidth = 4
opts.copyindent = true

opts.mouse = ""

require("settings.plugins")
