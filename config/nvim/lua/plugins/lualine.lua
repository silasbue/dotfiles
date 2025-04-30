return {
  'nvim-lualine/lualine.nvim',
  event = { "VeryLazy" },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    options = {
      theme = 'auto',
      disabled_filetypes = { 'dashboard', 'neo-tree', 'snacks_dashboard' },
      section_separators = '',
      component_separators = '',
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
      lualine_a = {
      },
      lualine_b = {

        {
          'buffers',
          show_filename_only = true, -- Shows shortened relative path when set to false.
          mode = 0,
          symbols = {
            modified = ' ●', -- Text to show when the buffer is modified
            alternate_file = '', -- Text to show to identify the alternate file
            directory = '', -- Text to show when the buffer is a directory
          },
        }
      },
      lualine_c = {},
      lualine_x = { 'encoding', 'fileformat', 'filetype' },
      lualine_y = { 'tabs' },
      lualine_z = {},
    },
  }
}
