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
end

return {
	Binds = binds,
	Init = init,

	init()
}
