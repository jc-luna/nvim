local ls = require("luasnip")
local i = ls.insert_node
local t = ls.text_node
local c = ls.choice_node

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
	}),

	-- The header stuff
	--[[ ls.snippet({
		trig = "preamble_fancyhdr",
		docstring = "A simple fancy running header setup."
	}, {
		ls.text_node({
			"\\usepackage[paperheight=11in, paperwidth=8.5in,",
				"\tincludehead,",
				"\tnomarginpar,",
				"\ttextwidth=6in,",
				"\theadheight=0.5in]{geometry}",
			"\\usepackage{fancyhdr}",
		})
	}),
	ls.snippet({
		trig = "make_fancyhdrft",
		docstring = "A simple fancy running header definition."
	}, {
		t({
			"\\pagestyle{fancy}",
			"\\fancyhead{}",
			"\\fancyhead["}), i(1, "Align") , t({"]{"}), i(2, "Header"), t({"}",
			"",
			"\\fancyfoot{}",
			"\\fancyfoot[", i(3, "Align"), "]{\\thepage}"
		})
	}), ]]

	-- Chemistry
	ls.snippet({
		trig = "preamble_chem",
		docstring = "Packages useful for writing chemical formulas"
		.." and general chemistry-related communication."
	}, {
		ls.text_node({
			"\\usepackage[version=4]{mhchem}"
		})
	}),

	-- Astronomy
	ls.snippet({
		trig = "preamble_astro",
		docstring = "Packages useful for writing about astrophysics."
	}, {
		ls.text_node({
			"\\usepackage[starfontsans]{starfont}"
		})
	}),

	--[[
	--	Listings!!
	--]]

	-- For listings...
	ls.snippet({
		trig = "preamble_listing",
		docstring = "Required packages for all deflisting_ snippets."
	}, {
		ls.text_node({
			"\\usepackage{listings}",
			"\\usepackage{xcolor}",
		})
	}),

	ls.snippet({
		trig = "deflisting_python",
		docstring = "Define a listing for Python."
	}, {
		ls.text_node({
			"\\definecolor{codegreen}{rgb}{0,0.6,0}",
			"\\definecolor{codegray}{rgb}{0.5,0.5,0.5}",
			"\\definecolor{codepurple}{rgb}{0.58,0,0.82}",
			"\\definecolor{backcolour}{rgb}{0.95,0.95,0.92}",
			"",
			"\\lstdefinestyle{pylight}{",
				"backgroundcolor=\\color{backcolour},",
				"commentstyle=\\color{codegreen},",
				"keywordstyle=\\color{magenta},",
				"numberstyle=\\tiny\\color{codegray},",
				"stringstyle=\\color{codepurple},",
				"basicstyle=\\ttfamily\\footnotesize,",
				"breakatwhitespace=false,",
				"breaklines=true,",
				"captionpos=b,",
				"keepspaces=true,",
				"numbers=left,",
				"numbersep=5pt,",
				"showspaces=false,",
				"showstringspaces=false,",
				"showtabs=false,",
				"tabsize=2",
			"}",
		})
	})
}
