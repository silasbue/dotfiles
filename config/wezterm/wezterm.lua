local wezterm = require("wezterm") --[[@as Wezterm]]
local config = wezterm.config_builder()

-- FONT
config.font = wezterm.font('FiraCode Nerd Font')
config.font_size = 13

-- UI
-- config.color_scheme = 'tokyonight_moon'
config.color_scheme = 'Gruvbox Dark (Gogh)'
-- config.color_scheme = 'Catppuccin Mocha'

config.adjust_window_size_when_changing_font_size = false

-- remove title bar
config.window_decorations = 'RESIZE'
config.hide_tab_bar_if_only_one_tab = true
-- config.enable_tab_bar = false
-- set default window size
-- config.use_fancy_tab_bar = false
-- config.tab_bar_at_bottom = true
config.initial_cols = 142
config.initial_rows = 44
-- change background opacity
config.window_background_opacity = 0.95
config.macos_window_background_blur = 10
-- config.window_padding = {
--   left = 0,
--   right = 0,
--   top = 0,
--   bottom = 0,
-- }
-- BEHAVIOUR
-- by default (on macos) left option key is treated as the ALT key
-- this disables that behaviour and treats it as option instead
config.send_composed_key_when_left_alt_is_pressed = true

-- KEY BINDINGS
config.keys = {
  -- Prompt for a name to use for a new workspace and switch to it.
  {
    key = 'w',
    mods = 'CTRL|OPT',
    action = wezterm.action.PromptInputLine {
      description = wezterm.format {
        { Attribute = { Intensity = 'Bold' } },
        { Foreground = { AnsiColor = 'Fuchsia' } },
        { Text = 'Enter name for new workspace' },
      },
      action = wezterm.action_callback(function(window, pane, line)
        -- line will be `nil` if they hit escape without entering anything
        -- An empty string if they just hit enter
        -- Or the actual line of text they wrote
        if line then
          window:perform_action(
            wezterm.action.SwitchToWorkspace {
              name = line,
            },
            pane
          )
        end
      end),
    },
  },
  { key = 't', mods = 'OPT', action = wezterm.action.ShowTabNavigator },
  {
    -- open interactive list of workspaces
    key = 'w',
    mods = 'OPT',
    action = wezterm.action.ShowLauncherArgs { flags = 'WORKSPACES|LAUNCH_MENU_ITEMS' },
  },
  {
    key = 'k',
    mods = 'CTRL|OPT',
    action = wezterm.action.SplitPane {
      direction = 'Up',
      size = { Percent = 50 },
    },
  },
  {
    key = 'j',
    mods = 'CTRL|OPT',
    action = wezterm.action.SplitPane {
      direction = 'Down',
      size = { Percent = 50 },
    },
  },
  {
    key = 'l',
    mods = 'CTRL|OPT',
    action = wezterm.action.SplitPane {
      direction = 'Right',
      size = { Percent = 50 },
    },
  },
  {
    key = 'h',
    mods = 'CTRL|OPT',
    action = wezterm.action.SplitPane {
      direction = 'Left',
      size = { Percent = 50 },
    },
  },
  {
    key = 'x',
    mods = 'CTRL|OPT',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },
  {
    key = 'h',
    mods = 'CTRL',
    action = wezterm.action.AdjustPaneSize { 'Left', 5 },
  },
  {
    key = 'j',
    mods = 'CTRL',
    action = wezterm.action.AdjustPaneSize { 'Down', 5 },
  },
  {
    key = 'k',
    mods = 'CTRL',
    action = wezterm.action.AdjustPaneSize { 'Up', 5 }
  },
  {
    key = 'l',
    mods = 'CTRL',
    action = wezterm.action.AdjustPaneSize { 'Right', 5 },
  },
  {
    key = 'h',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.AdjustPaneSize { 'Left', 1 },
  },
  {
    key = 'j',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.AdjustPaneSize { 'Down', 1 },
  },
  {
    key = 'k',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.AdjustPaneSize { 'Up', 1 }
  },
  {
    key = 'l',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.AdjustPaneSize { 'Right', 1 },
  },
  {
    key = 'h',
    mods = 'OPT',
    action = wezterm.action.ActivatePaneDirection 'Left',
  },
  {
    key = 'j',
    mods = 'OPT',
    action = wezterm.action.ActivatePaneDirection 'Down',
  },
  {
    key = 'k',
    mods = 'OPT',
    action = wezterm.action.ActivatePaneDirection 'Up',
  },
  {
    key = 'l',
    mods = 'OPT',
    action = wezterm.action.ActivatePaneDirection 'Right',
  },
}

return config
