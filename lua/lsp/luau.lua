local luauLSP = require("luau-lsp")
luauLSP.setup = {
	platform = {
		type = "roblox"
	},
	types = {
		roblox_security_level = "PluginSecurity"
	},
	sourcemap = {
		enabled = true,
		autogenerate = true,
		-- automatic generation when the server is attached
		rojo_project_file = "default.project.json",
		sourcemap_file = "sourcemap.json",
  },
}
