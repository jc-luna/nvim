return {
    "nvim-treesitter/nvim-treesitter",
	config = function()
		local cfg = require("nvim-treesitter.configs")
		cfg.setup({
			ensure_installed = {
				"c", "cpp", "cmake",
				"lua", "luau",
				"python",
				"latex",
				"vim", "vimdoc",
				"query", "markdown",
				"markdown_inline",
				"json"
			},

			highlight = {
				enable = true
			}
		})

	end
}
