local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.keys = require("wezmaps")
config.color_scheme = 'catppuccin-macchiato'
config.font = wezterm.font('FiraCode Nerd Font Mono', { weight = 600 })
config.font_size = 14
config.line_height = 0.95
config.adjust_window_size_when_changing_font_size = false
config.window_decorations = 'RESIZE' -- remove title bar
config.initial_cols = 142            -- startup window sizing
config.initial_rows = 44             -- -||-
config.max_fps = 120

-- by default (on macos) left option key is treated as the ALT key
-- this disables that behaviour and treats it as option instead
config.send_composed_key_when_left_alt_is_pressed = true

config.tab_max_width = 32
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

-- tab bar styling
wezterm.on('update-right-status', function(window, pane)
  local bat = ''
  for _, b in ipairs(wezterm.battery_info()) do
    bat = string.format('%.0f%%', b.state_of_charge * 100)
  end
  window:set_right_status(string.format(" %s | %s | [%s] ", window:active_workspace(), bat, wezterm.strftime("%H:%M")))
end)

return config
