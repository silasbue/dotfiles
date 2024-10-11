local function cmd(x)
  return function() vim.cmd(x) end
end

return {
  { "<leader>s",       mode = { "n" }, cmd("write"), desc = "Save current Buffer" },
  { "<leader><tab>",   mode = { "n" }, cmd("bn"),    desc = "Go to next Buffer" },
  { "<leader><s-tab>", mode = { "n" }, cmd("bp"),    desc = "Go to previous Buffer" },
  { "<leader>j",       mode = { "n" }, "<c-6>",      desc = "Go to alternate Buffer" },
  { "<leader>q",       mode = { "n" }, cmd("bd"),    desc = "Close current Buffer" },
  { "<leader>a",       mode = { "n" }, "ggVG",       desc = "Highlight all text" },
}
