require('mini.diff').setup()
vim.keymap.set('n', '<leader>d', function() vim.cmd('lua MiniDiff.toggle_overlay()') end, { desc = "Toggle Diff View" })
