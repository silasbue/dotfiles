return {
  "folke/flash.nvim",
  opts = {
    modes = {
      -- disable flash on normal search (<c-s> while in search mode will still trigger flash search)
      search = {
        enabled = false
      }
    },
  },
  keys = {
    "f",
    { "s",     mode = { "n" }, function() require("flash").jump() end,       desc = "Flash" },
    { "S",     mode = { "n" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end,     desc = "Toggle Flash Search" },
  },
}
