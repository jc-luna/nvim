vim.loader.enable()

require("settings.theme")
require("settings.keymaps")

require("plugins.completion.lsp.config")
--require("plugins.completion.cmp.config")

local opts = vim.opt

vim.cmd.colorscheme("catppuccin-mocha")

vim.cmd.highlight("Normal guibg = none")
vim.cmd.highlight("NonText guibg = none")
vim.cmd.highlight("Normal cterm = none")
vim.cmd.highlight("NonText cterm = none")

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

require("settings.plugin")
