local cmp = require("cmp")
cmp.setup({
   sources = cmp.config.sources({
	   { name = "nvim_lsp",
            entry_filter = function(entry, ctx)
                return require("cmp").lsp.CompletionItemKind.Text ~= entry:get_kind()
            end },
	}),
   mapping = cmp.mapping.preset.insert({
	   ["<C-Space>"] = cmp.mapping.complete(),
	   ["<C-u>"] = cmp.mapping.scroll_docs(-4),
	   ["<C-d>"] = cmp.mapping.scroll_docs(4),
	   ["<tab>"] = cmp.mapping.confirm({ select = true }),
   }),
})
