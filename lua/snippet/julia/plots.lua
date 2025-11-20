local ls = require("luasnip")
local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")

return {
	ls.snippet({
		trig = "plots_defaults",
		docstring = "Basically defaults for Plots to make them look good (mostly on the gr() backend)."
	}, {
		i(1, "Plots."), t({"default(titlefont=(12, \"Helvetica\"),",
				"\tguidefont=(12, \"Helvetica\"),",
				"\ttickfont=(12, \"Helvetica\"),",
				"\tlegendfont=(12, \"Helvetica\"),",
				"\ttopmargin=5"}), extras.rep(1), t({"mm,",
				"\tbottommargin=5"}), extras.rep(1), t({"mm,",
				"\tleftmargin=5"}), extras.rep(1), t({"mm,",
				"\trightmargin=5"}), extras.rep(1), t({"mm)"
		})
	})
}
