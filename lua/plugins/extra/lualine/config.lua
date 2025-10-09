return function()
	require("lualine").setup{
		options = {
			theme = "catppuccin",
			icons_enabled = true,
			--component_separators = { left = "/", right = "/" },
			--section_separators = { left = "◤", right = "◥" },
			component_separators = { left = "|", right = "|" },
			section_separators = { left = "▌", right = "▐" },
			disabled_filetypes = {
				statusline = {},
				winbar = {},
			},
			ignore_focus = {},
			always_divide_middle = true,
			always_show_tabline = true,
			globalstatus = true,
			refresh = {
				statusline = 100,
				tabline = 100,
				winbar = 100,
			}
		},
		sections = {
			lualine_a = {"mode"},
			lualine_b = {"branch", "diagnostics"},
			lualine_c = {},
			lualine_x = {"encoding", "fileformat", "filetype"},
			lualine_y = {"progress"},
			lualine_z = {"location"}
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = {},
			lualine_x = {"location"},
			lualine_y = {},
			lualine_z = {}
		},
		tabline = {},
		winbar = {},
		inactive_winbar = {},
		extensions = {}
	}
end
