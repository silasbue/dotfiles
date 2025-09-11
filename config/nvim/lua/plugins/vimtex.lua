return {
  {
    "lervag/vimtex",
    ft = { "tex" },
    config = function()
      -- Compiler
      vim.g.vimtex_compiler_method = "latexmk"

      -- Viewer: Skim
      vim.g.vimtex_view_method = "skim"
      vim.g.vimtex_view_skim_sync = 1  -- Enable forward/inverse search
      vim.g.vimtex_view_skim_activate = 1 -- Focus Skim when you view
      

      -- Optional: disable quickfix auto-open
      -- vim.g.vimtex_quickfix_mode = 0

      -- Folding
      -- vim.g.vimtex_fold_enabled = 1
    end,
  },
}
