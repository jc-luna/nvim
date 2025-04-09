local function getFname(s)
	comps = {}
	for part in string.gmatch(s, "/(%w+)") do
		table.insert(comps, part)
	end

	return comps[#comps]
end

return function()

local theme = {
	fill = { --[[fg = "#11111b", ]]bg = "#11111b" },
	head = { bg = "#585b70" },
	current_tab = { bg = "#cba6f7" },
	tab = { bg = "#585b70" },
	win = "TabLine",
	tail = { bg = "#585b70" },
}

require("tabby").setup({
	line = function(line)
		return {
			{
				{ " luna ", hl = theme.head },
				line.sep("", theme.head, theme.fill),
			},

			line.tabs().foreach(function(tab)
				return {
					line.sep(
						"█",
						tab.is_current() and theme.current_tab or theme.tab,
						theme.fill
					),
					{
						tab.is_current() and "" or "󰆣",
						hl = theme.tab
					},
					{
						tab.number(),
						hl = theme.tab
					},
					{
						--getFname(tab.name()),
						tab.name(),
						hl = theme.tab
					},
					{
						tab.close_btn(""),
						hl = theme.tab
					},
					line.sep("█", theme.tab, theme.fill),
					hl = theme.tab, 
					margin = " ",
				}
			end),

			line.spacer(),

			{
				line.sep("", theme.tail, theme.fill),
				{ " omg hai :3 ", hl = theme.tail },
			},
			hl = theme.fill,
		}
	end,
})

end
