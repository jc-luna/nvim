local lspconfig = require("lspconfig")
lspconfig.pylsp.setup {
	on_attach = custom_attach,
	settings = {
		pylsp = {
			plugins = {
			-- auto-completion options
	    		jedi_completion = { fuzzy = true },
			-- import sorting
		        pyls_isort = { enabled = true }
			}
		}
	},
	flags = {
		debounce_text_changes = 200
	},
	capabilities = capabilities
}
