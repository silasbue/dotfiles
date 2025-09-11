return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      "<leader>fa",
      function()
        require("conform").format({ async = true })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "isort", "black" },
      javascript = { "prettierd", "prettier", stop_after_first = true },
      markdown = { "mdslw" },
      tex = { "latexindent" },
    },
    default_format_opts = {
      lsp_format = "fallback",
    },
    -- format_on_save = { timeout_ms = 500 },
  },
}
