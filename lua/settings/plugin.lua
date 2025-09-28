require("mini.surround").setup()
require("plugins.extra.mini-surround")
require("plugins.completion.autopairs.config")

local ls = require("luasnip")
ls.add_snippets("python", require("snippet.python.common"))

ls.add_snippets("tex", require("snippet.latex.preamble"))
ls.add_snippets("tex", require("snippet.latex.macros"))
ls.add_snippets("tex", require("snippet.latex.titlepage"))
ls.add_snippets("markdown", require("snippet.markdown"))
ls.add_snippets("gitignore", require("snippet.gitignore"))

vim.filetype.add({
	extension = {
		simconf = "simconf"
	},
})
vim.treesitter.language.register("json", "simconf")
