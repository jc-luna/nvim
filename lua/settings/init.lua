vim.loader.enable()

require("settings.keymaps")
require("settings.theme")
require("settings.plugins")

-- Tab Settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.copyindent = true

vim.opt.autoread = true

vim.opt.mouse = ""
