return {
    "nvim-treesitter/nvim-treesitter",
	config = function()
		local cfg = require("nvim-treesitter.configs")
		cfg.setup({
			ensure_installed = {
				"c", "lua",
				"vim", "vimdoc",
				"query", "markdown",
				"markdown_inline"
			}
		})
	end
}
