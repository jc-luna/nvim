local ls = require("luasnip")
local i = ls.insert_node

-- Basically a misc for stuff I like in LaTeX
return {

	-- Allows starred sections to show up in TOC and PDF sidebar (optional)
	ls.snippet({
		trig = "newcmd_stsect",
		docstring = "Adds commands that allow starred sections to appear in TOC,"
		.." as well as the PDF sidebar when using hyperref (optional)."
	}, {
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
	ls.snippet({
		trig = "newcmd_setzeroindent",
		docstring = "What it says on the tin."
		.." Paragraphs after this declaration have no indentation."
	}, {
		ls.text_node({
			"\\setlength{\\parindent}{0pt}",
			""
		})
	}),

	-- Aspect Ratio symbol def
	-- req: \usepackage{trimclip}
	ls.snippet({
		trig = "newsymb_AR",
		docstring = "REQUIRES \\usepackage{trimclip}\n"
		.."Defines the symbol for Aspect Ratio."
	}, {
		ls.text_node({
			"\\def\\AR{\\text{\\itshape\\clipbox{0pt 0pt .32em 0pt}\\AE\\kern-.30emR}}"
		})
	})
}
