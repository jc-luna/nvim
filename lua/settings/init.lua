require("settings.theme")
require("settings.keymaps").init()
require("plugins.configs.lsp")

local opts = vim.opt

vim.cmd.colorscheme("catppuccin-mocha")

vim.cmd.highlight("Normal guibg = none")
vim.cmd.highlight("NonText guibg = none")
vim.cmd.highlight("Normal cterm = none")
vim.cmd.highlight("NonText cterm = none")

opts.relativenumber = true
opts.termguicolors = true

-- Tab Settings
opts.tabstop = 4
opts.softtabstop = 4
opts.shiftwidth = 4
opts.copyindent = true

opts.mouse = ""

require("plugins.configs.cmp")
require("plugins.configs.lualine")
--require("plugins.configs.roblox.luau-tree")
--require("plugins.configs.roblox.rojo")
require("plugins.configs.cmake-tools")
require("plugins.configs.neo-tree")

require("mini.surround").setup()
require("plugins.configs.mini-surround")

local ls = require("luasnip")
ls.add_snippets("py", require("snippet.python.common"))
