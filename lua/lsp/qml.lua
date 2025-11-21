vim.lsp.config.qmlls = {
	cmd = { "qmlls6" },
	filetypes = { "qml", "qmljs" },
	root_markers = { ".git" }
}

vim.lsp.enable("qmlls")
