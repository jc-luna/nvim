local ls = require("luasnip")

return {
	ls.snippet({
		trig = "latex",
		docstring = "Ignore common LaTeX build things."
	}, {
		ls.text_node({
			"# Ignore LaTeX Build Things",
			"*.aux",
			"*.fdb_latexmk",
			"*.log",
			"*.dvi",
			"*.fls",
			"*.synctex.gz",
			"*.out.ps",
			"*.synctex(busy)",
			"*.bbl",
			"*.blg",
			"*.toc",
			"*.pdf"
		})
	})
}
