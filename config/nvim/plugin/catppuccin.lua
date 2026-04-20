require('catppuccin').setup()

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function(ev)
    if ev.match == "catppuccin-mocha" then
      local cat_colors = require("catppuccin.palettes").get_palette()
      local FzfColors = {
        FzfLuaNormal = { bg = cat_colors.surface0 },
        FzfLuaPreviewNormal = { bg = cat_colors.mantle },
        FzfLuaBorder = { bg = cat_colors.surface0, fg = cat_colors.surface0 },
        FzfLuaPreviewBorder = { bg = cat_colors.mantle, fg = cat_colors.mantle },
        FzfLuaTitle = { bg = cat_colors.pink, fg = cat_colors.mantle },
        FzfLuaPreviewTitle = { bg = cat_colors.green, fg = cat_colors.mantle },
      }
      for hl, col in pairs(FzfColors) do
        vim.api.nvim_set_hl(0, hl, col)
      end
    end
  end,
})

vim.cmd.colorscheme('catppuccin-mocha')
