return {
  "neovim/nvim-lspconfig",
  event = "BufRead",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "saghen/blink.cmp"
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()

    require("mason-lspconfig").setup_handlers {
      function(server_name)
        require("lspconfig")[server_name].setup({})
      end,
    }

    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(_)
        local cur_buf = vim.api.nvim_get_current_buf()
        require("which-key").add({
          { "gD",         vim.lsp.buf.declaration,                                                 mode = { "n" },      desc = "lsp declaration",             buffer = cur_buf },
          { "gd",         vim.lsp.buf.definition,                                                  mode = { "n" },      desc = "lsp definition",              buffer = cur_buf },
          { "gi",         vim.lsp.buf.implementation,                                              mode = { "n" },      desc = "lsp implementation",          buffer = cur_buf },
          { "<c-k>",      vim.lsp.buf.signature_help,                                              mode = { "n" },      desc = "lsp signature_help",          buffer = cur_buf },
          { "<leader>wa", vim.lsp.buf.add_workspace_folder,                                        mode = { "n" },      desc = "lsp add workspace folder",    buffer = cur_buf },
          { "<leader>wr", vim.lsp.buf.remove_workspace_folder,                                     mode = { "n" },      desc = "lsp remove workspace folder", buffer = cur_buf },
          { "<leader>D",  vim.lsp.buf.type_definition,                                             mode = { "n" },      desc = "lsp type definition",         buffer = cur_buf },
          { "<leader>rn", vim.lsp.buf.rename,                                                      mode = { "n" },      desc = "lsp rename",                  buffer = cur_buf },
          { "<leader>.",  vim.lsp.buf.code_action,                                                 mode = { "n", "v" }, desc = "lsp code actions",            buffer = cur_buf },
          { "gr",         vim.lsp.buf.references,                                                  mode = { "n" },      desc = "lsp references",              buffer = cur_buf },
          { "<leader>wl", function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, mode = { "n" },      desc = "lsp remove workspace folder", buffer = cur_buf },
        })
      end,
    })
  end
}
