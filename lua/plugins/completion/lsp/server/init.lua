local lspconfig = require("lspconfig")

return {
	require("latex"),
	require("python"),
	require("cmake"),
	require("clangd"),
--	require("plugins.configs.lsp.luau")
}
