return {
  'whonore/Coqtail',
  ft = "coq",
  config = function()
    require("which-key").add({
      { "<leader>cc", function() vim.cmd("CoqStart") end,  mode = { "n" },      desc = "coq start" },
      { "<leader>cq", function() vim.cmd("CoqStop") end,   mode = { "n" },      desc = "coq stop" },
      { "<c-n>",      function() vim.cmd("CoqNext") end,   mode = { "n", "i" }, desc = "coq next" },
      { "<c-p>",      function() vim.cmd("CoqUndo") end,   mode = { "n", "i" }, desc = "coq undo" },
      { "<leader>cl", function() vim.cmd("CoqToLine") end, mode = { "n" },      desc = "coq to line" },
      {
        "<leader>cs",
        function()
          local args = vim.fn.input("Coq Search query: ")
          vim.cmd("Coq Search " .. args)
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
    })
  end
}
