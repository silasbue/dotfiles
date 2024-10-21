return {
  "folke/trouble.nvim",
  event = "BufRead",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local trouble = require("trouble")
    trouble.setup({ focus = true })
  end

}
