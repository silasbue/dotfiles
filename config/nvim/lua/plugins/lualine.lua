return {
  'nvim-lualine/lualine.nvim',
  event = "VeryLazy",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    options = {
      theme = 'auto',
      disabled_filetypes = { 'dashboard', 'neo-tree' },
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch' },
      lualine_c = { 'diff' },
      lualine_x = { 'diagnostics' },
      lualine_y = { 'progress' },
      lualine_z = { 'location' }
    },
    tabline = {
      lualine_a = { 'buffers' },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = { 'tabs' },
    },
  }
}
