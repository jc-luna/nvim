-- vim:foldmethod=marker
-- Catppuccin {{{
local catppuccin = require("catppuccin")
local mocha = require("catppuccin.palettes.mocha")

catppuccin.setup({
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
		neotree = true,
		mini = {
			enabled = true,
			indentscope_color = "",
		},
		telescope = {
			enabled = true
		},
		blink_cmp = true
    },
    compile_path = vim.fn.stdpath("cache") .. "/catppuccin"
})

vim.cmd.colorscheme("catppuccin-mocha")
-- }}}

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

vim.opt.termguicolors = true
vim.opt.showtabline = 2
vim.opt.cmdheight = 0

vim.opt.wrap = false
vim.opt.sidescrolloff = 8
vim.opt.textwidth = 100
vim.opt.colorcolumn = "+0"

-- Color overrides {{{
vim.api.nvim_set_hl(0, "LineNrAbove", { fg=mocha.lavender, bold=false })
vim.api.nvim_set_hl(0, "LineNr", { fg=mocha.lavender, bold=true })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg=mocha.lavender, bold=true })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg=mocha.lavender, bold=false })
vim.api.nvim_set_hl(0, "MsgArea", { bg=mocha.crust, bold=false })

vim.cmd.highlight("Normal guibg = none")
vim.cmd.highlight("NonText guibg = none")
vim.cmd.highlight("Normal cterm = none")
vim.cmd.highlight("NonText cterm = none")

vim.cmd.highlight("TabLine guibg = none")
vim.cmd.highlight("TabLineFill guibg = none")
-- }}}
