return {
  'echasnovski/mini.diff',
  event = "BufRead",
  version = false,
  opts = {},
  keys = {
    {
      "<leader>d",
      mode = { "n" },
      function() require("mini.diff").toggle_overlay(vim.api.nvim_get_current_buf()) end,
      desc = "Toggle mini.diff overlay"
    },
  }
}
