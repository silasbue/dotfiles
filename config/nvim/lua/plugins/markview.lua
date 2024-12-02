return {
  "OXY2DEV/markview.nvim",
  ft = "markdown",
  enabled = false,
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons"
  },
  keys = {
    { "<leader>mv", mode = { "n" }, ":Markview toggle<cr>", desc = "toggle markview for current buffer" },
  },
  config = function()
    local presets = require("markview.presets")

    require("markview").setup({
      checkboxes = presets.checkboxes.nerd,
      headings = presets.headings.glow,
      horizontal_rules = presets.horizontal_rules.thin,
    })
  end
}
