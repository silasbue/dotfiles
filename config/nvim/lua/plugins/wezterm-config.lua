return {
  'winter-again/wezterm-config.nvim',
  event = "BufRead",
  config = function()
    -- changing this to true means the plugin will try to append
    -- $HOME/.config/wezterm' to your RTP, meaning you can more conveniently
    -- access modules in $HOME/.config/wezterm/lua/ for using with this plugin
    -- otherwise, store data where you want
    local wez = require("wezterm-config")
    wez.setup({
      append_wezterm_to_rtp = false,
    })

    wez.set_wezterm_user_var('window_padding', {
      left = 0,
      right = 0,
      top = 0,
      bottom = 0,
    })
    vim.api.nvim_create_autocmd('VimLeavePre', {
      callback = function()
        wez.set_wezterm_user_var('window_padding', {})
      end
    })

    vim.api.nvim_create_autocmd('ColorScheme', {
      pattern = "catppuccin-mocha",
      callback = function()
        wez.set_wezterm_user_var('color_scheme', 'Gruvbox Dark (Gogh)')
      end
    })
    vim.api.nvim_create_autocmd('ColorScheme', {
      pattern = "catppuccin-latte",
      callback = function()
        wez.set_wezterm_user_var('color_scheme', 'catppuccin-latte')
      end
    })
  end
}
