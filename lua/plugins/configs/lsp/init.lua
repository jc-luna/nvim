local lspconfig = require("lspconfig")

return {
	require("plugins.configs.lsp.latex"),
	require("plugins.configs.lsp.python"),
	require("plugins.configs.lsp.cmake")
}
