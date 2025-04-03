-- Catppuccin
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
    }
})

-- Color overrides
vim.api.nvim_set_hl(0, "LineNrAbove", { fg=mocha.lavender, bold=false })
vim.api.nvim_set_hl(0, "LineNr", { fg=mocha.sky, bold=true })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg=mocha.lavender, bold=false })
