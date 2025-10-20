-- Specs
return {
	require("plugins.themes.catppuccin.init"),

	require("plugins.completion.blink"),
	require("plugins.completion.lua-snippets"),
	require("plugins.completion.autopairs"),

	require("plugins.navigation.telescope"),
	require("plugins.navigation.homekey"),
	require("plugins.navigation.tmux-navigation"),

	require("plugins.filetype.vimtex"),
	require("plugins.filetype.render-markdown"),
	require("plugins.filetype.cmake-tools"),
	require("plugins.filetype.roblox.rojo"),
	require("plugins.filetype.roblox.luau-lsp"),
	require("plugins.filetype.roblox.luau-tree"),

	require("plugins.extra.lualine"),
	require("plugins.extra.tree-sitter"),
	require("plugins.extra.mini-surround"),
}
