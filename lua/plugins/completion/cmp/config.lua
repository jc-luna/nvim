local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
	sources = cmp.config.sources({
	{
		name = "nvim_lsp",
        entry_filter = function(entry, ctx)
            return require("cmp").lsp.CompletionItemKind.Text ~= entry:get_kind()
        end
	},
	{
		name = "luasnip",
	},
	}),
	mapping = cmp.mapping.preset.insert({
	   ["<C-Space>"] = cmp.mapping.complete(),
	   ["<C-u>"] = cmp.mapping.scroll_docs(-4),
	   ["<C-d>"] = cmp.mapping.scroll_docs(4),
	   ["<Tab>"] = cmp.mapping.confirm({ select = true }),
	   ["<C-j>"] =	cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif has_words_before() then
				cmp.complete()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<C-k>"] =	cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif has_words_before() then
				cmp.complete()
			else
				fallback()
			end
		end, { "i", "s" }),
	}),

	snippet = {
		expand = function(args)
			local ls = prequire("luasnip")
			if not ls then return end

			ls.lsp_expand(args.body)
		end
	},

	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered()

	}
})
