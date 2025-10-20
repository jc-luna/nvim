vim.lsp.config.clangd = {
	cmd = { "clangd" },
	filetypes = { "c", "cpp", "h" },
	init_options = {
		headerInsertion = "never"
	}
}

vim.lsp.enable("clangd")
