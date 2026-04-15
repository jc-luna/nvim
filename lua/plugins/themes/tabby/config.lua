-- Return the config!
return function()

local theme = {
	fill = { --[[fg = "#11111b", ]]bg = "#11111b" },
	head = { bg = "#585b70" },
	current_tab = { bg = "#cba6f7" },
	win = { bg = "#585b70" },
	tab = { bg = "#313244" },
	tail = { bg = "#585b70" },
	transparent = { bg = "NONE" },
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
						tostring(tab.number())..(tab.is_current() and "!" or ""),
						hl = theme.tab
					},
					{
						tab.name(),
						hl = theme.tab
					},
					line.sep("█",
						theme.tab,
						(tab.number() == #(line.tabs().tabs))
							and theme.transparent or theme.fill),
					hl = theme.tab,
					margin = " ",
				}
			end),

			line.spacer(),

			{
				line.sep("", theme.tail, theme.transparent),
				{ " omg hai :3 ", hl = theme.tail },
			},
			hl = theme.transparent,
		}
	end,
})

end

