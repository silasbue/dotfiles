local g = vim.g
g.loaded_netrw = 1       -- disable default file explorer
g.loaded_netrwplugin = 1 -- -||-
g.mapleader = " "        -- set space as leader key
g.coqtail_nomap = 1

local o = vim.opt
o.number = true
o.shortmess:append "I" -- don't show default neovim intro message
o.relativenumber = true
o.showtabline = 2      -- ensure lualine tabline is always shown
o.wrap = false         -- don't wrap text
o.signcolumn = 'yes'   -- always show signcolumn
o.ignorecase = true    -- ignore case when searching
o.smartcase = true     -- -||-
o.tabstop = 2          -- misc tab settings
o.shiftwidth = 2       -- -||-
o.expandtab = true
o.smartindent = true
o.termguicolors = true -- use correct colors
o.scrolloff = 8        -- always keep a gap of X characters between cursor and top/bottom
o.laststatus = 3

vim.diagnostic.config({ virtual_lines = false })
vim.lsp.enable({ 'lua_ls', 'clangd', 'jedi_language_server' })
