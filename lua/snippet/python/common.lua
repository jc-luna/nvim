local ls = require("luasnip")
local i = ls.insert_node

return {
	ls.snippet("ifnamemain", {
		ls.text_node({"if __name__ == \"__main__\":", "\t"}, i(1))
	}),
	ls.snippet("adddirpath", {
		ls.text_node({
			"import os, sys",
			"sys.path.append(os.path.abspath(os.path.join(os.path.realpath(__file__), \"..\")))",
			""
		}),
	})
}
