-- I could check for the actual install of kitteh
-- but I'll just check for compat OS instead :3
if package.config:sub(1, 1) ~= "/" then return end

require("image").setup({
	backend = "kitty",
	processor = "magick_cli",
	integrations = {
		markdown = {
			enabled = true,
			clear_in_insert_mode = false,
			download_remote_images = false,
			only_render_image_at_cursor = false,
			floating_windows = false,
			filetypes = {
				"markdown", "vimwiki"
			}
		},
	},
	max_width = nil,
	max_height = nil,
	max_width_window_percentage = nil,
	max_height_window_percentage = 50,
	window_overlap_clear_enabled = false,
	window_overlap_clear_ft_ignore = {
		"cmp_menu", "cmp_docs", "snacks_notif", "scrollview", "scrollview_sign"
	},
	editor_only_render_when_focused = false,
	tmux_show_only_in_active_window = false,
	hijack_file_patterns = {
		"*.png", "*.jpg", "*.jpeg",
		"*.webp", "*.avif"--, "*.gif" -- enable gif at ur own risk...
	}
})
