require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "black", "isort" },
		javascript = { "prettierd", "prettier", stop_after_first = true },
		markdown = { "mdslw" },
		tex = { "latexindent" },
	},
	default_format_opts = {
		lsp_format = "fallback",
	},
})

vim.keymap.set("n", "<leader>fa", function()
	require("conform").format({ async = true })
end, { desc = "Format Buffer" })
