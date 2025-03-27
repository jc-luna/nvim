local cmd = require("neo-tree.command")

return {
	autoclose = {
		event = "file_opened",
		handler = function()
			cmd.execute({action = "close"})
		end
	}
}
