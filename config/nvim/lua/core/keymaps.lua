local function cmd(x)
  return function() vim.cmd(x) end
end

-- keymaps required in which-key.lua plugin to enable lazy loading.
return {
  { "<leader>s",  mode = { "n" }, cmd("write"),                        desc = "Save current Buffer" },
  { "<c-l>",      mode = { "n" }, cmd("bn"),                           desc = "Go to next Buffer" },
  { "<c-h>",      mode = { "n" }, cmd("bp"),                           desc = "Go to previous Buffer" },
  { "<tab>",      mode = { "n" }, "<c-6>",                             desc = "Go to *last* Buffer" },
  { "<leader>q",  mode = { "n" }, cmd("bd"),                           desc = "Close current Buffer" },
  { "<leader>a",  mode = { "n" }, "ggVG",                              desc = "Highlight all text" },
  { "<leader>w",  mode = { "n" }, "<c-w>w",                            desc = "switch window" },
  { "<leader>cl", mode = { "n" }, cmd("colorscheme catppuccin-latte"), desc = "light mode" },
  { "<leader>cd", mode = { "n" }, cmd("colorscheme catppuccin-mocha"), desc = "dark mode" },
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
}
