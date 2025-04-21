local ls = require("luasnip")
local t = ls.text_node
local i = ls.insert_node

return {
	ls.snippet("make_titlepage_stylized", {
		t({
			"\\begin{titlepage}",
				"\t\\vspace*{\\fill}",
				"\t\\begin{center}",
				"\t\\huge \\textbf{"}), i(1, "Title"), t({"} \\break",
				"\t",
				"\t\\large \\textit{"}), i(2, "Subtitle"), t({"} \\break",
				"\t",
				"\t\\large JC Luna\\break",
				"\t\\end{center}",
			"\t\\vspace*{\\fill}",
		"\\end{titlepage}",
		""
		})
	}),

	ls.snippet("make_titlepage_apastudent", {
		t({
			"\\begin{titlepage}",
				"\t\\vspace*{\\fill}",
				"\t\\begin{center}",
				"\t\\textbf{"}), i(1, "Title"), t({"}\\break",
				"\t",
				"\tJuan Carlos \"JC\" Luna\\\\",
				"\tAerospace Engineering Department, Texas A\\&M University\\break",
				"\t"}), i(2, "CLAS 1234-500: CLASS NAME"), t({"\\\\",
				"\t"}), i(3, "Dr. Instructor"), t({"\\\\",
				"\t"}), i(4, "Due Date: Month Day, Year"), t({"\\\\",
				"\t",
				"\t\\end{center}",
			"\t\\vspace*{\\fill}",
		"\\end{titlepage}",
		""
		})
	})
}
