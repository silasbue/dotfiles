return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    -- enabled = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
      })
    end
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        integrations = {
          indent_blankline = {
            enabled = true,
            scope_color = "lavender", -- catppuccin color (eg. `lavender`) Default: text
            colored_indent_levels = false,
          },
        }
      })

      vim.cmd("colorscheme catppuccin")
    end
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {}
  }
}
