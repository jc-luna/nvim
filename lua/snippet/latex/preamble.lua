local ls = require("luasnip")
local i = ls.insert_node

return {
	-- I use these packages all the time
	ls.snippet("preamble_common", {
		ls.text_node({
			"\\usepackage{amsmath}",
			"\\usepackage{amssymb}",
			"\\usepackage{bbold}",
			"\\usepackage{graphicx}",
			"\\usepackage{bookmark}",
			"\\usepackage[colorlinks=true,linkcolor=black,urlcolor=black,bookmarksopen=true]{hyperref}",
			""
		})
	}),

	-- Alignment stuff for more complicated table and fig setups, etc.
	ls.snippet("preamble_align", {
		ls.text_node({
			"\\usepackage{multicol}",
			"\\usepackage{ragged2e}",
			"\\usepackage{enumitem}",
			"\\usepackage{subcaption}",
			""
		})
	})
}
