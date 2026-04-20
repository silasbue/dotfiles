vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
		if client.name == "tinymist" then
			vim.keymap.set("n", "<leader>tp", function()
				client:exec_cmd({
					title = "pin",
					command = "tinymist.pinMain",
					arguments = { vim.api.nvim_buf_get_name(0) },
				}, { bufnr = ev.buf })
			end, { desc = "[T]inymist [P]in", noremap = true })
			vim.keymap.set("n", "<leader>tu", function()
				client:exec_cmd({
					title = "unpin",
					command = "tinymist.pinMain",
					arguments = { vim.v.null },
				}, { bufnr = ev.buf })
			end, { desc = "[T]inymist [U]npin", noremap = true })
		end
	end,
})

return {
	settings = {
		formatterMode = "typstyle", -- or "typstfmt"
		formatterProseWrap = true, -- wrap lines in content mode
		formatterPrintWidth = 80, -- limit line length to 80 if possible
		formatterIndentSize = 2, -- indentation width
		-- exportPdf = "onSave",
	},
}
