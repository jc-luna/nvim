return {
    "neovim/nvim-lspconfig",
    event = {
    	"BufRead",
		"BufNewFile"
	},
    config = require("plugins.completion.lsp.config")
}
