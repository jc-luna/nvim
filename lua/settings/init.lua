require("settings.theme")
require("settings.keymaps")
require("plugins.configs.lsp")

local opts = vim.opt

vim.cmd.colorscheme("catppuccin-mocha")

vim.cmd.highlight("Normal guibg = none")
vim.cmd.highlight("NonText guibg = none")
vim.cmd.highlight("Normal cterm = none")
vim.cmd.highlight("NonText cterm = none")

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

local ls = require("luasnip")
ls.add_snippets("py", require("snippet.python.common"))
