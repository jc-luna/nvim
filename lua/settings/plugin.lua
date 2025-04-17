require("plugins.navigation.neo-tree.config")
require("plugins.navigation.lualine.config")
--require("plugins.configs.roblox.luau-tree")
--require("plugins.configs.roblox.rojo")
require("plugins.configs.cmake-tools")

require("mini.surround").setup()
require("plugins.configs.mini-surround")
require("plugins.completion.autopairs.config")

local ls = require("luasnip")
ls.add_snippets("python", require("snippet.python.common"))

vim.filetype.add({
	extension = {
		simconf = "simconf"
	},
})
vim.treesitter.language.register("json", "simconf")
