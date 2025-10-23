-- vim:foldmethod=marker
-- Plugin Config Initializations {{{
require("mini.surround").setup()
require("plugins.extra.mini-surround")
require("plugins.completion.autopairs.config")
require("plugins.filetype.render-markdown.config")
-- }}}

-- Additional Filetypes {{{
vim.filetype.add({
	extension = {
		simconf = "simconf",
		enconf = "enconf"
	},
})
vim.treesitter.language.register("json", "simconf")
vim.treesitter.language.register("json", "enconf")
-- }}}

-- Snippets {{{ 
local ls = require("luasnip")

-- LaTeX Snippets
ls.add_snippets("tex", require("snippet.latex.preamble"))
ls.add_snippets("tex", require("snippet.latex.macros"))
ls.add_snippets("tex", require("snippet.latex.titlepage"))

-- Other Snippets
ls.add_snippets("python", require("snippet.python.common"))
ls.add_snippets("markdown", require("snippet.markdown"))
ls.add_snippets("gitignore", require("snippet.gitignore"))
ls.add_snippets("julia", require("snippet.julia.plots"))
-- }}}
