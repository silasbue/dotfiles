  -- disable default file explorer
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1

  if vim.g.neovide then
    vim.g.neovide_hide_mouse_when_typing = true
  end

  require('core.settings')
  require('core.keymaps')
  require('core.lazy')
