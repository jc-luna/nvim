require("lspconfig").clangd.setup{
	cmd = { "clangd" },
	filetypes = { "cpp", "h" },
	init_options = {
		headerInsertion = "never"
--		compilationDatabasePath = "./build/",
--		compileCommandsDir = "./build/compile_commands.json"
	}
}
