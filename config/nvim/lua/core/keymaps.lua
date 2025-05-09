local function cmd(x)
  return function() vim.cmd(x) end
end

-- keymaps are loaded in which-key.lua plugin.
return {
  { "<leader>s", mode = { "n" }, cmd("write"), desc = "Save current Buffer" },
  { "<tab>",     mode = { "n" }, cmd("bn"),    desc = "Go to next Buffer" },
  { "<m-n>",     mode = { "n" }, cmd("bn"),    desc = "Go to next Buffer" },
  { "<s-tab>",     mode = { "n" }, cmd("bp"),    desc = "Go to previous Buffer" },
  -- { "<tab>",     mode = { "n" }, "<c-6>",      desc = "Go to *last* Buffer" },
  { "<leader>q", mode = { "n" }, cmd("bd"),    desc = "Close current Buffer" },
  { "<leader>a", mode = { "n" }, "ggVG",       desc = "Highlight all text" },
  { "<c-h>", mode = { "n" }, "<c-w>h" },
  { "<c-j>", mode = { "n" }, "<c-w>j" },
  { "<c-k>", mode = { "n" }, "<c-w>k" },
  { "<c-l>", mode = { "n" }, "<c-w>l" },
  { "<leader>k", mode = { "n" }, "<c-]>", desc = "Jump to Subject" },
  { "<c-q>", mode = { "n" }, ":qall<cr>", desc = "Quit All" },
  {
    "<leader>mm",
    mode = { "n" },
    function()
      vim.cmd("MarksQFListAll")
      vim.cmd("close")                -- ugly hack since `MarksQFListAll` opens the qflist by default
      vim.cmd("Trouble qflist focus") -- open qflist with trouble instead
    end,
    desc = "fill qf list with marks"
  },
  {
    "gK",
    mode = { "n" },
    function()
      local new_config = not vim.diagnostic.config().virtual_text
      vim.diagnostic.config({ virtual_text = new_config })
    end,
    desc = "Toggle diagnostic virtual_text"
  }
}
