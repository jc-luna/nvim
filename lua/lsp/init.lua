vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.declaration()<CR>")
		vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.definition()<CR>")
	end
})

return {
	require("lsp.python"),
	require("lsp.julia"),
	require("lsp.latex"),
	require("lsp.typst"),

	require("lsp.clangd"),
	require("lsp.cmake"),
	require("lsp.qml"),

	require("lsp.lua"),
	require("lsp.luau"),
}
