return {
  "williamboman/mason.nvim",
  event = "BufRead",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    "folke/neodev.nvim",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()

    -- Add additional capabilities supported by nvim-cmp
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local wk = require("which-key")

    -- add default cmp-nvim-lsp capabilities to each lsp
    require("mason-lspconfig").setup_handlers {
      function(server_name)
        require("lspconfig")[server_name].setup {
          capabilities = capabilities,
        }
      end,
    }

    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(ev)
        wk.add({
          { "gD",         vim.lsp.buf.code_action,             mode = { "n" },      desc = "lsp declaration" },
          { "gd",         vim.lsp.buf.definition,              mode = { "n" },      desc = "lsp definition" },
          { "K",          vim.lsp.buf.hover,                   mode = { "n" },      desc = "lsp hover" },
          { "gi",         vim.lsp.buf.implementation,          mode = { "n" },      desc = "lsp implementation" },
          { "<c-k>",      vim.lsp.buf.signature_help,          mode = { "n" },      desc = "lsp signature_help" },
          { "<leader>wa", vim.lsp.buf.add_workspace_folder,    mode = { "n" },      desc = "lsp add workspace folder" },
          { "<leader>wr", vim.lsp.buf.remove_workspace_folder, mode = { "n" },      desc = "lsp remove workspace folder" },
          { "<leader>D",  vim.lsp.buf.type_definition,         mode = { "n" },      desc = "lsp type definition" },
          { "<leader>rn", vim.lsp.buf.rename,                  mode = { "n" },      desc = "lsp rename" },
          { "<leader>.",  vim.lsp.buf.code_action,             mode = { "n", "v" }, desc = "lsp code actions" },
          { "gr",         vim.lsp.buf.references,              mode = { "n" },      desc = "lsp references" },
          {
            "<leader>wl",
            function()
              print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
            end,
            mode = { "n" },
            desc = "lsp remove workspace folder"
          },
        }, { buffer = ev.buf })
      end,
    })
  end
}
