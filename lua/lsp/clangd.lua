vim.lsp.config.clangd = {
	cmd = { "clangd", "--header-insertion=never" },
	filetypes = { "c", "cpp", "h", "hpp" },
	init_options = { }
}

vim.lsp.enable("clangd")
