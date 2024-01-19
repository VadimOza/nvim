return {
	"aserowy/tmux.nvim",
	config = function()
		require("tmux").setup({
			copy_sync = {
				enable = true,
				-- When enabled, will copy on selection
				-- Automatically copies the visual selection to the system clipboard
				-- nvim's clipboard is also supported
				sync_clipboard = true,
				-- sync_clipboard = false,
				-- When copy_sync is enabled, will passthrough ESC sequences
				-- Currently only supported in a few terminals
				passthrough = true,
			},
			navigation = {
				-- Enables default keybindings (C-hjkl) for normal mode
				enable_default_keybindings = true,
				-- Prevents unzoom tmux when navigating beyond vim borders
				persist_zoom = false,
				-- Constantly updates tmux cwd on vim cwd
				-- 0: don't update, 1: on cwd change, 2: on every vim cwd change
				update_cwd = 1,
			},
			resize = {
				-- Enables default keybindings (A-hjkl) for normal mode
				enable_default_keybindings = true,
				resize_step_x = 1,
				resize_step_y = 1,
			},
		})
	end,
}
