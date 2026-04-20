-- SETTINGS
vim.g.mapleader = " "
vim.g.coqtail_nomap = 1
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.signcolumn = "yes"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.laststatus = 3
vim.opt.showtabline = 2
vim.opt.splitright = true
vim.opt.splitbelow = true

-- TODO: add descriptions to keymaps
-- GLOBAL KEYMAPS
vim.keymap.set("n", "<leader>s", function()
	vim.cmd("write")
end, { desc = "save/write buffer" })
vim.keymap.set("n", "<leader>q", function()
	vim.cmd("bd")
end)
vim.keymap.set("n", "<leader>a", "ggVG")
vim.keymap.set("t", "<esc>", "<c-\\><c-n>")
vim.keymap.set("n", "<tab>", function()
	vim.cmd("b#")
end)
vim.keymap.set("n", "<leader>R", function()
	vim.cmd("restart")
end)
vim.keymap.set("n", "gK", function()
	vim.diagnostic.config({ virtual_lines = not vim.diagnostic.config().virtual_lines })
end)

-- BUILTIN PLUGINS
vim.cmd("packadd nohlsearch")
vim.cmd("packadd nvim.undotree")
vim.keymap.set("n", "<leader>u", function()
	vim.cmd("Undotree")
end)

-- PLUGINS
vim.pack.add({
	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/nvim-treesitter/nvim-treesitter",
	"https://github.com/ibhagwan/fzf-lua.git",
	{ src = "https://github.com/saghen/blink.cmp", version = vim.version.range("1.*") },
	"https://github.com/neovim/nvim-lspconfig",
	{ src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
	"https://github.com/chentoast/marks.nvim",
	"https://github.com/nvim-lualine/lualine.nvim",
	"https://github.com/tpope/vim-surround",
	"https://github.com/windwp/nvim-autopairs",
	"https://github.com/nvim-mini/mini.files",
	"https://github.com/karb94/neoscroll.nvim",
	"https://github.com/stevearc/conform.nvim",
	"https://github.com/nvim-mini/mini.diff",
	"https://github.com/folke/which-key.nvim",
})

-- TREESITTER
local ts_parsers = { "python", "typst", "rust" }
require("nvim-treesitter").install(ts_parsers)
vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    local filetype = args.match
    local lang = vim.treesitter.language.get_lang(filetype)
    if vim.treesitter.language.add(assert(lang)) then
      vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      vim.treesitter.start()
    end
  end
})

-- LSP
vim.diagnostic.config({
	virtual_lines = false,
	severity_sort = true,
	virtual_text = {
		current_line = true,
	},
})

vim.lsp.enable({
	"lua_ls",
	"clangd",
	"jedi_language_server",
	"texlab",
	"gdscript",
	"rust_analyzer",
	"vsrocq",
	"tinymist",
})
