return {
  "folke/zen-mode.nvim",
  opts = {},
  keys = {
    { "<leader>cz", mode = { "n" }, function() require("zen-mode").toggle() end, desc = "ZenMode" },
  }
}
