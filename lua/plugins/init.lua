-- Specs
return {
	require("plugins.themes.catppuccin.init"),

	require("plugins.specs.lualine"),
	require("plugins.specs.neo-tree"),
	require("plugins.specs.vimtex"),
	require("plugins.specs.homekey"),

	require("plugins.specs.cmp"),
	require("plugins.specs.lsp"),
	require("plugins.specs.lua-snippets"),
	require("plugins.specs.treesitter")
}
