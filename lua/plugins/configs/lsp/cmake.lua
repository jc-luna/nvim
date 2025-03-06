local lspconfig = require("lspconfig")
lspconfig.cmake.setup{
	cmd = { "cmake-language-server" },
	filetypes = { "cmake" },
	init_options = {
		buildDirectory = "build"
	},
}
