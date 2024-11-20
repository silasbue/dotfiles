return {
  'echasnovski/mini.files',
  version = '*',
  opts = {
    mappings = {
      close       = 'q',
      go_in       = 'L',
      go_in_plus  = 'l',
      go_out      = 'h',
      go_out_plus = 'H',
      reset       = '<BS>',
      reveal_cwd  = '@',
      show_help   = 'g?',
      synchronize = '=',
      trim_left   = '<',
      trim_right  = '>',
    }
  },
  keys = {
    { "<leader>me", mode = { "n" }, function() MiniFiles.open() end, desc = "Open File Explorer" }
  }
}
