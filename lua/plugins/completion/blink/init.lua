return {
	"saghen/blink.cmp",

	version = "1.*",

	dependencies = {
		"L3MON4D3/LuaSnip",
		version = "v2.*"
	},

	opts = {
		keymap = {
			preset = "super-tab"
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
		  	  "lsp", "path", "snippets", "buffer"
		  },
		},

		fuzzy = {
			implementation = "prefer_rust_with_warning"
		}
	},

	opts_extend = {
		"sources.default"
	}
}
