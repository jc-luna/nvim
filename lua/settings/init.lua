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

-- Tab Settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.copyindent = true

vim.opt.mouse = ""

require("settings.plugins")
