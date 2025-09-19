vim.lsp.config.clangd = {
	cmd = { "clangd" },
	filetypes = { "c", "cpp", "h" },
	init_options = {
		headerInsertion = "never"
--		compilationDatabasePath = "./build/",
--		compileCommandsDir = "./build/compile_commands.json"
	}
}

vim.lsp.enable("clangd")
