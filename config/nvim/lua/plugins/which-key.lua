return {
  "folke/which-key.nvim",
  event = "BufRead",
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
  config = function()
    require("which-key").add(require("core.keymaps"))
  end
}
