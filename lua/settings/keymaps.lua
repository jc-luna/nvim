local binds = {
	UnbindArrowKeys = function()
		vim.keymap.set("n", "<Left>", "<Nop>", {noremap = true})
		vim.keymap.set("n", "<Right>", "<Nop>", {noremap = true})
		vim.keymap.set("n", "<Up>", "<Nop>", {noremap = true})
		vim.keymap.set("n", "<Down>", "<Nop>", {noremap = true})
	end
}

local init = function()
	for _, method in pairs(binds) do
		method()
	end

	vim.api.nvim_create_autocmd("LspAttach", {
		group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
			vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

			local opts = { buffer = ev.buf }
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set("n", "gR", vim.lsp.buf.rename, opts)
			vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		end
	})
end

return {
	Binds = binds,
	Init = init,

	init()
}
