local wezterm = require("wezterm")

return {
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
    key = 'z',
    mods = 'CMD',
    action = wezterm.action.TogglePaneZoomState,

  },
  {
    key = 'H',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.Search { CaseInSensitiveString = 'hash' },
  },
  {
    key = "o",
    mods = "CMD",
    action = wezterm.action { QuickSelectArgs = {
      patterns = {
        "https?://\\S+"
      },
      action = wezterm.action_callback(function(window, pane)
        local url = window:get_selection_text_for_pane(pane)
        wezterm.log_info("opening: " .. url)
        wezterm.open_with(url)
      end)
    } }
  },
}
