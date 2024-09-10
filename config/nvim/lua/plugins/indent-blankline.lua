return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  config = function()
    require("ibl").setup()
    -- vim.cmd("hi @ibl.scope.char.1 guifg=#037ba3")
  end
}
