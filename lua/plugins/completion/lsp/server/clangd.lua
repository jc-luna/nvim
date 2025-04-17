require("lspconfig").clangd.setup{
	cmd = { "clangd" },
	filetypes = { "cpp", "h" },
	init_options = {
--		compilationDatabasePath = "./build/",
--		compileCommandsDir = "./build/compile_commands.json"
	}
}
