vim.lsp.config.lua_ls = {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = { { ".luarc.json", ".luarc.jsonc" }, ".git" },
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			}
		}
	},

	-- nvim cfg dir extras
	on_init = function(client)
		if client.workspace_folders then
			local path = client.workspace_folders[1].name
			if
			path ~= vim.fn.stdpath("config")
			and (vim.uv.fs_stat(path .. "/.luarc.json")
			or vim.uv.fs_stat(path .. "/.luarc.jsonc"))
			then return end
		end

		client.config.settings.Lua = vim.tbl_deep_extend(
			"force", client.config.settings.Lua, {
			runtime = {
				path = {
					"lua/?.lua",
					"lua/?/init.lua",
				}
			},
			workspace = {
				checkThirdParty = false,
				library = {
					vim.env.VIMRUNTIME
				}
			}
		})
	end,
}

vim.lsp.enable("lua_ls")
