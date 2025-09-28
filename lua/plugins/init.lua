-- Specs
return {
	require("plugins.themes.catppuccin.init"),

	require("plugins.completion.blink"),
	require("plugins.completion.lua-snippets"),
	require("plugins.completion.tree-sitter"),
	require("plugins.completion.autopairs"),

	require("plugins.navigation.lualine"),
	require("plugins.navigation.telescope"),
	require("plugins.navigation.homekey"),
	require("plugins.navigation.tmux-navigation"),

	require("plugins.filetype.vimtex"),
	require("plugins.specs.mini-surround"),

	require("plugins.filetype.cmake-tools"),
	require("plugins.filetype.roblox.rojo"),
	require("plugins.filetype.roblox.luau-lsp"),
	require("plugins.filetype.roblox.luau-tree")
}
