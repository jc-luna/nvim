local lspconfig = require("lspconfig")
lspconfig.clangd.setup{
	cmd = { "clangd" },
	filetypes = { "cpp", "h" },
	init_options = {
		compilationDatabasePath = "./build/debug",
		compileCommandsDir = "./build/compile_commands.json"
	}
}
