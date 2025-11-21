vim.lsp.config.clangd = {
	cmd = { "clangd", "--header-insertion=never" },
	filetypes = { "c", "cpp", "h" },
	init_options = { }
}

vim.lsp.enable("clangd")
