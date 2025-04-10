local lspconfig = require("lspconfig")

return {
	require("plugins.completion.lsp.server.clangd"),
	require("plugins.completion.lsp.server.lua"),
	require("plugins.completion.lsp.server.python"),
	require("plugins.completion.lsp.server.latex"),
	require("plugins.completion.lsp.server.cmake"),
--	require("plugins.configs.lsp.luau")
}
