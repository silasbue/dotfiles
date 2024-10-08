return {
  "folke/zen-mode.nvim",
  opts = {},
  keys = {
    { "<leader>z", mode = { "n" }, function() require("zen-mode").toggle() end, desc = "ZenMode" },
  }
}
