vim.lsp.config.cmake = {
	cmd = { "cmake-language-server" },
	filetypes = { "cmake" },
	init_options = {
		buildDirectory = "build"
	},
}

vim.lsp.enable("cmake")
