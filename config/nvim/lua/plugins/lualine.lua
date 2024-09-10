return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "folke/tokyonight.nvim"
  },
  opts = {
    disabled_filetypes = { 'NvimTree' },
    tabline = {
      lualine_a = {
        {
          'buffers',
          symbols = {
            alternate_file = '', -- remove icon for alternate file
          },
        }
      },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = { 'tabs' }
    },
  }
}
