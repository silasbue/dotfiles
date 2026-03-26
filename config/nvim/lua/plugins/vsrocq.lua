return {
  'tomtomjhj/vsrocq.nvim',
  ft = 'coq',
  enabled = false,
  dependecies = {
    'whonore/Coqtail',
  },
  opts = {
    vsrocq = {
      proof = {
        pointInterpretationMode = "NextCommand",
        cursor = {
          sticky = false,
        }
      },
      -- completion = {
      --   enable = true,
      --   algorithm = "StructuredSplitUnification"
      -- },
      diagnostics = {
        full = true
      }
    }
  },
  keys = {
      { "<leader>cc", function() vim.cmd("VsRocq") end,  mode = { "n" },      desc = "coq start" },
      { "<leader>cq", function() vim.cmd("") end,   mode = { "n" },      desc = "coq stop" },
      { "<c-n>",      function() vim.cmd("VsRocq stepForward") end,   mode = { "n", "i" }, desc = "coq next" },
      { "<c-p>",      function() vim.cmd("VsRocq stepBackward") end,   mode = { "n", "i" }, desc = "coq undo" },
      { "<leader>cl", function() vim.cmd("VsRocq interpretToPoint") end, mode = { "n" },      desc = "coq to line" },
      {
        "<leader>cs",
        function()
          local args = vim.fn.input("Coq Search query: ")
          vim.cmd("VsRocq search " .. args)
        end,
        mode = { "n" },
        desc = "coq search <args>"
      },
      {
        "<leader>ch",
        function()
          local mode = vim.fn.mode()
          local args = ''
          if mode == "v" or mode == "V" then
            vim.cmd('noau normal! "vy"') -- Yank selection into register v
            args = vim.fn.getreg("v")    -- select register v
          else
            args = vim.fn.input("Coq Check query: ")
            vim.cmd("Coq Check " .. args)
          end
        end,
        mode = { "n", "v" },
        desc = "coq check <args>"
      },
      {
        "<leader>ca",
        function()
          local args = vim.fn.input("Coq About query: ")
          vim.cmd("Coq About " .. args)
        end,
        mode = { "n" },
        desc = "coq about <args>"
      },
  }
}
