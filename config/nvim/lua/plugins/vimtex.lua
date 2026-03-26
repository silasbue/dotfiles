return {
  {
    "lervag/vimtex",
    ft = { "tex" },
    config = function()
      -- Compiler
      vim.g.vimtex_compiler_method = "latexmk"

      vim.g.vimtex_view_method = "sioyek"
      -- vim.g.vimtex_view_skim_sync = 1     -- Enable forward/inverse search
      -- vim.g.vimtex_view_skim_activate = 1 -- Focus Skim when you view
      -- vim.g.Tex_GotoError=0
      vim.g.vimtex_quickfix_mode = 0

      -- Folding
      -- vim.g.vimtex_fold_enabled = 1
    end,
  },
}
