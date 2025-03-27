local neotree = require("neo-tree")
local utils = require("plugins.configs.neo-tree.utils")


neotree.setup({
	event_handlers = {
		utils.autoclose
	}
})
