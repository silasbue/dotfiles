return {
  "folke/zen-mode.nvim",
  opts = {},
  dependencies = {
    "folke/twilight.nvim"
  },
  keys = {
    { "<leader>z", mode = { "n" }, function() require("zen-mode").toggle() end, desc = "ZenMode" },
  }
}
