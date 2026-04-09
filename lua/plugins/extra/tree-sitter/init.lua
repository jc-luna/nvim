return {
    "nvim-treesitter/nvim-treesitter",
	branch = "main",
	init = function()
		local ensure_installed = {
			"c", "cpp", "cmake",
			"lua", "luau",
			"python",
			"vim", "vimdoc",
			"query", "markdown",
			"markdown_inline",
			"json"
		}

		local already = require("nvim-treesitter.config").get_installed()
		local parsers = vim.iter(ensure_installed):filter(function(parser)
				return not vim.tbl_contains(already, parser)
			end)
			:totable()

		require("nvim-treesitter").install(parsers)
	end
}
