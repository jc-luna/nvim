local ls = require("luasnip")
local i = ls.insert_node

return {
	-- I use these packages all the time
	ls.snippet({
		trig = "preamble_common",
		docstring = "Packages that I use pretty much all the time."
	}, {
		ls.text_node({
			"\\usepackage{amsmath}",
			"\\usepackage{amssymb}",
			"\\usepackage{bbold}",
			"\\usepackage{graphicx}",
			"\\usepackage[colorlinks=true,linkcolor=black,urlcolor=black,bookmarksopen=true]{hyperref}",
			"\\usepackage{bookmark}",
			""
		})
	}),

	-- Alignment stuff for more complicated table and fig setups, etc.
	ls.snippet({
		trig = "preamble_align",
		docstring = "Packages that help with making complicated table and figure environments,"
		.." as well as general alignment."
	}, {
		ls.text_node({
			"\\usepackage{multicol}",
			"\\usepackage{ragged2e}",
			"\\usepackage{enumitem}",
			"\\usepackage{subcaption}",
			""
		})
	})
}
