return {
  'whonore/Coqtail',
  ft = "coq",
  config = function()
    require("which-key").add({
      { "<leader>cc", function() vim.cmd("CoqStart") end,          mode = { "n" }, desc = "coq start" },
      { "<leader>cq", function() vim.cmd("CoqStop") end,           mode = { "n" }, desc = "coq stop" },
      { "<leader>cj", function() vim.cmd("CoqNext") end,           mode = { "n" }, desc = "coq next" },
      { "<leader>ck", function() vim.cmd("CoqUndo") end,           mode = { "n" }, desc = "coq undo" },
      { "<leader>cl", function() vim.cmd("CoqToLine") end,         mode = { "n" }, desc = "coq to line" },
      { "<leader>cs", function() vim.cmd("Coq Search <args>") end, mode = { "n" }, desc = "coq to line" },
    })
  end
}
