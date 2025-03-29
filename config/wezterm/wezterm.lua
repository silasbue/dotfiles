local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- allows this config to be changed directly from neovim
local wezterm_config_nvim = wezterm.plugin.require('https://github.com/winter-again/wezterm-config.nvim')
wezterm.on('user-var-changed', function(window, pane, name, value)
  local overrides = window:get_config_overrides() or {}
  overrides = wezterm_config_nvim.override_user_var(overrides, name, value)
  window:set_config_overrides(overrides)
end)

-- tab bar styling
wezterm.on('update-right-status', function(window, pane)
  local bat = ''
  for _, b in ipairs(wezterm.battery_info()) do
    bat = string.format('%.0f%%', b.state_of_charge * 100)
  end
  window:set_right_status(string.format(" %s | %s | [%s] ", window:active_workspace(), bat, wezterm.strftime("%H:%M")))
end)

config.tab_max_width = 32
config.max_fps = 120
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.color_scheme = 'catppuccin-mocha'
config.font = wezterm.font('FiraCode Nerd Font Mono', { weight = 600 })
config.font_size = 14
config.line_height = 0.95
config.adjust_window_size_when_changing_font_size = false
config.window_decorations = 'RESIZE' -- remove title bar
config.hide_tab_bar_if_only_one_tab = false
config.initial_cols = 142            -- startup window sizing
config.initial_rows = 44             -- -||-
-- config.window_background_opacity = 0.85
-- config.macos_window_background_blur = 20
--
-- by default (on macos) left option key is treated as the ALT key
-- this disables that behaviour and treats it as option instead
config.send_composed_key_when_left_alt_is_pressed = true

config.keys = {
  { -- Prompt for a name to use for a new workspace and switch to it.
    key = 'w',
    mods = 'SHIFT|CMD',
    action = wezterm.action.PromptInputLine {
      description = wezterm.format {
        { Attribute = { Intensity = 'Bold' } },
        { Foreground = { AnsiColor = 'Fuchsia' } },
        { Text = 'Enter name for new workspace' },
      },
      action = wezterm.action_callback(function(window, pane, line)
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
  { -- open interactive list of workspaces
    key = 'w',
    mods = 'OPT',
    action = wezterm.action.ShowLauncherArgs { flags = 'WORKSPACES|LAUNCH_MENU_ITEMS' },
  },
  {
    key = 'k',
    mods = 'SHIFT|CMD',
    action = wezterm.action.SplitPane {
      direction = 'Up',
      size = { Percent = 50 },
    },
  },
  {
    key = 'j',
    mods = 'SHIFT|CMD',
    action = wezterm.action.SplitPane {
      direction = 'Down',
      size = { Percent = 50 },
    },
  },
  {
    key = 'l',
    mods = 'SHIFT|CMD',
    action = wezterm.action.SplitPane {
      direction = 'Right',
      size = { Percent = 50 },
    },
  },
  {
    key = 'h',
    mods = 'SHIFT|CMD',
    action = wezterm.action.SplitPane {
      direction = 'Left',
      size = { Percent = 50 },
    },
  },
  {
    key = 'x',
    mods = 'CMD',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },
  {
    key = 'h',
    mods = 'OPT',
    action = wezterm.action.AdjustPaneSize { 'Left', 5 },
  },
  {
    key = 'j',
    mods = 'OPT',
    action = wezterm.action.AdjustPaneSize { 'Down', 5 },
  },
  {
    key = 'k',
    mods = 'OPT',
    action = wezterm.action.AdjustPaneSize { 'Up', 5 }
  },
  {
    key = 'l',
    mods = 'OPT',
    action = wezterm.action.AdjustPaneSize { 'Right', 5 },
  },
  {
    key = 'h',
    mods = 'OPT|SHIFT',
    action = wezterm.action.AdjustPaneSize { 'Left', 1 },
  },
  {
    key = 'j',
    mods = 'OPT|SHIFT',
    action = wezterm.action.AdjustPaneSize { 'Down', 1 },
  },
  {
    key = 'k',
    mods = 'OPT|SHIFT',
    action = wezterm.action.AdjustPaneSize { 'Up', 1 }
  },
  {
    key = 'l',
    mods = 'OPT|SHIFT',
    action = wezterm.action.AdjustPaneSize { 'Right', 1 },
  },
  {
    key = 'h',
    mods = 'CMD',
    action = wezterm.action.ActivatePaneDirection 'Left',
  },
  {
    key = 'j',
    mods = 'CMD',
    action = wezterm.action.ActivatePaneDirection 'Down',
  },
  {
    key = 'k',
    mods = 'CMD',
    action = wezterm.action.ActivatePaneDirection 'Up',
  },
  {
    key = 'l',
    mods = 'CMD',
    action = wezterm.action.ActivatePaneDirection 'Right',
  },
  {
    key = 'æ',
    mods = 'CMD',
    action = wezterm.action.TogglePaneZoomState,

  },
  {
    key = 'H',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.Search { CaseInSensitiveString = 'hash' },
  },
  {key="o", mods="CTRL",
     action=wezterm.action{QuickSelectArgs={
       patterns={
          "https?://\\S+"
       },
       action = wezterm.action_callback(function(window, pane)
          local url = window:get_selection_text_for_pane(pane)
          wezterm.log_info("opening: " .. url)
          wezterm.open_with(url)
       end)
     }}
   },
}
return config
