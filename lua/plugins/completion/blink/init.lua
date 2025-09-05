return {
	"saghen/blink.cmp",

	version = "1.*",

	dependencies = {
		"L3MON4D3/LuaSnip",
		version = "v2.*"
	},

	opts = {
		keymap = {
			preset = "super-tab",
			["<Up>"] = {},
			["<Down>"] = {},
			["<S-A-k>"] = {"select_prev"},
			["<S-A-j>"] = {"select_next"}
		},

		appearance = {
		  nerd_font_variant = "mono"
		},


		completion = {
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 1000
			},
		},

		snippets = {
			preset = "luasnip"
		},

		sources = {
		  default = {
		  	  "lsp", "path", "snippets"
		  },
		},

		fuzzy = {
			implementation = "prefer_rust_with_warning"
		},
		cmdline = {
			keymap = { preset = 'inherit' },
			completion = { menu = { auto_show = true } },
		},
	},

	opts_extend = {
		"sources.default"
	}
}
