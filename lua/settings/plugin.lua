require("plugins.navigation.neo-tree.config")
require("plugins.navigation.lualine.config")
--require("plugins.configs.roblox.luau-tree")
--require("plugins.configs.roblox.rojo")
require("plugins.configs.cmake-tools")

require("mini.surround").setup()
require("plugins.configs.mini-surround")

local ls = require("luasnip")
ls.add_snippets("py", require("snippet.python.common"))
