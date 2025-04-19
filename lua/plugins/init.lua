-- Specs
return {
	require("plugins.themes.catppuccin.init"),

	--require("plugins.completion.cmp"),
	require("plugins.completion.blink"),
	require("plugins.completion.lsp"),
	require("plugins.completion.lua-snippets"),
	require("plugins.completion.tree-sitter"),
	require("plugins.completion.autopairs"),

	require("plugins.navigation.neo-tree"),
	require("plugins.navigation.lualine"),
	require("plugins.navigation.tabby"),
	require("plugins.navigation.telescope"),
	require("plugins.navigation.homekey"),

	require("plugins.specs.vimtex"),
	require("plugins.specs.mini-surround"),
	require("plugins.specs.kiwi"),
	require("plugins.specs.image"),

	require("plugins.specs.cmake-tools"),

--[[	require("plugins.specs.roblox.rojo"),
	require("plugins.specs.roblox.luau-lsp"),
	require("plugins.specs.roblox.luau-tree"),]]--

}
