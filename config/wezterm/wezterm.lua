local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.term = "wezterm"
config.keys = require("tmuxmaps")
config.color_scheme = "catppuccin-mocha"
config.font = wezterm.font("FiraCode Nerd Font Mono", { weight = 400 })
config.font_size = 14
config.line_height = 0.95
config.adjust_window_size_when_changing_font_size = false
config.window_decorations = "RESIZE" -- remove title bar
config.initial_cols = 142 -- startup window sizing
config.initial_rows = 44 -- -||-

-- by default (on macos) left option key is treated as the ALT key
-- this disables that behaviour and treats it as option instead
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = false

config.enable_tab_bar = false

wezterm.on("update-right-status", function(window, _pane)
	window:set_right_status(string.format("%s ", window:active_workspace()))
end)

return config
