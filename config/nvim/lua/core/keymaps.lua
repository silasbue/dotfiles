local function cmd(x)
  return function() vim.cmd(x) end
end

-- keymaps required in which-key.lua plugin to enable lazy loading.
return {
  { "<leader>s",     mode = { "n" }, cmd("write"),             desc = "Save current Buffer" },
  { "<c-l>",         mode = { "n" }, cmd("bn"),                desc = "Go to next Buffer" },
  { "<c-h>",         mode = { "n" }, cmd("bp"),                desc = "Go to previous Buffer" },
  { "<tab>",         mode = { "n" }, "<c-6>",                  desc = "Go to *last* Buffer" },
  { "<leader>q",     mode = { "n" }, cmd("bd"),                desc = "Close current Buffer" },
  { "<leader>a",     mode = { "n" }, "ggVG",                   desc = "Highlight all text" },
  { "<leader>pd",    mode = { "n" }, vim.diagnostic.goto_prev, desc = "go to previous diagnostic" },
  { "<leader>nd",    mode = { "n" }, vim.diagnostic.goto_next, desc = "go to previous diagnostic" },
  { "<leader><tab>", mode = { "n" }, "<c-w>w",                 desc = "test" },
  { "<c-j>",         mode = { "n" }, "<c-w>w",                 desc = "test" },
}
