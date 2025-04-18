local ls = require("luasnip")
local t = ls.text_node
local i = ls.insert_node

return {
	-- sometimes i cant rember :(
	ls.snippet("hyperlink", {
		t("["), i(1), t("]"),
		t("("), i(2), t(")")
	})
}
