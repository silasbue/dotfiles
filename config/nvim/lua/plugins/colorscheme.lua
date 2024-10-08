return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  init = function() vim.cmd [[ colorscheme catppuccin ]] end,
  opts = {
    transparent_background = true,
    integrations = {
      indent_blankline = {
        enabled = true,
        scope_color = "lavender", -- catppuccin color (eg. `lavender`) Default: text
        colored_indent_levels = false,
      },
    }
  },
}
