return {
  'nvim-lualine/lualine.nvim',
  event = "BufRead",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    options = {
      theme = 'auto',
      disabled_filetypes = { 'dashboard' }
    },
    tabline = {
      lualine_a = {
        {
          'buffers',
          symbols = {
            -- alternate_file = '*',
          },
        }
      },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = { 'tabs' },
    },
  }
}
