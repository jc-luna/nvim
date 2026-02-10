vim.loader.enable()

require("settings.keymaps")
require("settings.theme")
require("settings.plugins")

-- Tab Settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.copyindent = true

vim.o.autoread = true
vim.api.nvim_create_autocmd(
	{ "CursorHold", "CursorHoldI", "FocusGained", "BufWinEnter" }, {
	command = "checktime",
	pattern = { "*" },
})

vim.opt.mouse = ""
