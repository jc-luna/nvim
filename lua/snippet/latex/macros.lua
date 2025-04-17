local ls = require("luasnip")
local i = ls.insert_node

-- Basically a misc for stuff I like in LaTeX
return {

	-- Allows starred sections to show up in TOC and PDF sidebar (optional)
	ls.snippet("newcmd_stsect", {
		ls.text_node({
			"\\newcommand{\\ssect}[2]{",
			"%\\pdfbookmark[0]{#1}{bkmk:#2}",
			"\\addcontentsline{toc}{section}{#1}",
			"\\section*{#1}}",
			"",
			"\\newcommand{\\ssubsect}[2]{",
			"%\\pdfbookmark[1]{#1}{bkmk:#2}",
			"\\addcontentsline{toc}{subsection}{#1}",
			"\\subsection*{#1}}",
			"",
			"\\newcommand{\\ssubsubsect}[2]{",
			"%\\pdfbookmark[2]{#1}{bkmk:#2}",
			"\\addcontentsline{toc}{subsubsection}{#1}",
			"\\subsubsection*{#1}}",
			""
		})
	}),

	-- what it says on the tin
	ls.snippet("newcmd_setzeroindent", {
		ls.text_node({
			"\\setlength{\\parindent}{0pt}",
			""
		})
	}),

	-- Aspect Ratio symbol def
	-- req: \usepackage{trimclip}
	ls.snippet("newsymb_AR", {
		ls.text_node({
			"\\def\\AR{\\text{\\itshape\\clipbox{0pt 0pt .32em 0pt}\\AE\\kern-.30emR}}"
		})
	})
}
