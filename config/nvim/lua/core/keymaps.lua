-- contains global keymaps, plugin specific keymaps are located in their respective files

-- default options:
-- noremap: make keymaps non-recursive to avoid unintended behaviour when keymaps overlap
-- silent: don't show any output
local opts = { noremap = true, silent = true }

-- Set space as leader key
vim.keymap.set("", "<Space>", "", opts)
vim.g.mapleader = " "

-- Save
vim.keymap.set("n", "<leader>s", function() vim.cmd("write") end, opts)


-- vim.keymap.set("n", "<leader>fa", function()
--   require("conform").format({
--     async = true,
--     vim.api.nvim_get_current_buf()
--   })
-- end)

-- Move text up and down
vim.keymap.set("n", "‹", ":m .+1<CR>==", opts)
vim.keymap.set("n", "∆", ":m .-2<CR>==", opts)
-- For visual mode
vim.keymap.set("v", "‹", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "∆", ":m '<-2<CR>gv=gv", opts)

-- Highlight all
vim.keymap.set("n", "<leader>a", "ggVG", opts)

-- Go to hyperlink/highlighted
vim.keymap.set("n", "<leader>fl", "<C-]>", opts)

-- go to next buffer
vim.keymap.set({ "n", "i" }, "<c-l>", function() vim.cmd("bn") end, opts)
-- go to previous buffer
vim.keymap.set({ "n", "i" }, "<c-h>", function() vim.cmd("bp") end, opts)

-- go to alternate (#) buffer
-- vim.keymap.set({ "n", "i" }, "<c-j>", "<c-6>", opts)

-- go to next tab
vim.keymap.set("n", "<c-j>", "gt", opts)
vim.keymap.set("i", "<c-j>", "<esc>gt", opts)
-- go to previous tab
vim.keymap.set("n", "<c-k>", "gT", opts)
vim.keymap.set("i", "<c-k>", "<esc>gT", opts)


-- close current buffer
vim.keymap.set("n", "<leader>q", function() vim.cmd("bd") end, opts)
