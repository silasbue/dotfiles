return {
  'echasnovski/mini.sessions',
  version = '*',
  lazy = false,
  dependencies = {'echasnovski/mini.starter'},
  opts = {
    force = { read = false, write = true, delete = true },
  },
  keys = {
    { "<leader>mks", mode = { "n" }, function() require('mini.sessions').write("Session.vim") end, desc = "Save local session" },
    { "<leader>mkg", mode = { "n" }, function() require('mini.sessions').write(vim.fn.input("Enter global session name: ") .. ".vim") end, desc = "Save global session" },
    { "<leader>mkd", mode = { "n" }, function() require('mini.sessions').delete() end, desc = "Delete current session" },
  }
}
