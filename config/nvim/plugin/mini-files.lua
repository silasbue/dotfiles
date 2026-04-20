require('mini.files').setup({
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
})

vim.keymap.set('n', '<leader>e', function() vim.cmd('lua MiniFiles.open()') end, { desc = "Open file explorer" })
