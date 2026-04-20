require("fzf-lua").setup({
      'default',
      fzf_colors = true,
      files = {
        formatter = "path.filename_first",
      },
      marks = {
        marks = "%a"
      },
      winopts = {
        title_flags = true
      },
      keymap = {
        fzf = {
          true,
        }
      },
      actions = {
        files = {
          true,
          ["ctrl-h"]       = require("fzf-lua").actions.toggle_hidden,
          ["ctrl-i"]       = require("fzf-lua").actions.toggle_ignore,
        }
      }
})

-- fuzzy find files if nvim opens without args
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argc() == 0 then
      require("fzf-lua").files()
    end
  end,
})

-- fzf keymaps
vim.keymap.set('n', '<leader>zz', function() vim.cmd("FzfLua") end)
vim.keymap.set('n', '<leader>zf', function() require("fzf-lua").files() end)
vim.keymap.set('n', '<leader>zb', function() require("fzf-lua").buffers() end)
vim.keymap.set('n', '<leader>zl', function() require("fzf-lua").live_grep() end)
vim.keymap.set('n', '<leader>zg', function() require("fzf-lua").lgrep_curbuf() end)
vim.keymap.set('n', '<leader>zq', function() require("fzf-lua").quickfix() end)
vim.keymap.set('n', '<leader>zc', function() require("fzf-lua").colorschemes() end)
vim.keymap.set('n', '<leader>zd', function() require("fzf-lua").lsp_document_diagnostics() end)
vim.keymap.set('n', '<leader>zs', function() require("fzf-lua").lsp_document_symbols() end)
vim.keymap.set('n', '<leader>zh', function() require("fzf-lua").helptags() end)
vim.keymap.set('n', '<leader>zm', function() require("fzf-lua").marks() end)
vim.keymap.set('n', '<leader>zk', function() require("fzf-lua").keymaps() end)
vim.keymap.set('n', '<leader>zr', function() require("fzf-lua").registers() end)
