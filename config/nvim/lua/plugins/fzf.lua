return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>zf",  mode = { "n" }, function() require("fzf-lua").files() end,                    desc = "Files (fzf)" },
    { "<leader>zag", mode = { "n" }, function() require("fzf-lua").live_grep() end,                desc = "Grep all files (fzf)" },
    { "<leader>zg",  mode = { "n" }, function() require("fzf-lua").lgrep_curbuf() end,             desc = "Grep buffer (fzf)" },
    { "<leader>zb",  mode = { "n" }, function() require("fzf-lua").buffers() end,                  desc = "Buffers (fzf)" },
    { "<leader>zh",  mode = { "n" }, function() require("fzf-lua").helptags() end,                 desc = "Help tags (fzf)" },
    { "<leader>zc",  mode = { "n" }, function() require("fzf-lua").colorschemes() end,             desc = "Colorschemes (fzf)" },
    { "<leader>zs",  mode = { "n" }, function() require("fzf-lua").lsp_document_symbols() end,     desc = "Symbols (fzf)" },
    { "<leader>zd",  mode = { "n" }, function() require("fzf-lua").lsp_document_diagnostics() end, desc = "Diagnostics (fzf)" },
    { "<leader>zm",  mode = { "n" }, function() require("fzf-lua").marks() end,                    desc = "Marks (fzf)" },
    { "<leader>zq",  mode = { "n" }, function() require("fzf-lua").quickfix() end,                 desc = "Quickfix list (fzf)" },
    { "<leader>zz",  mode = { "n" }, function() vim.cmd("FzfLua") end,                             desc = "Fzf menu" },
  },
  config = function()
    require("fzf-lua").setup({
      'default',
      fzf_colors = true,
      files = {
        formatter = "path.filename_first",
      },
      marks = {
        marks = "%a"
      },
      winopts = {
        title_flags = true
      },
      keymap = {
        fzf = {
          true,
        }
      },
      file_ignore_patterns = {
        "sprites_mouth/",
        "sprites_eyes/",
      },
    })

    -- Styling
    local cat_colors = require("catppuccin.palettes").get_palette()
    local FzfColors = {
      FzfLuaNormal = { bg = cat_colors.surface0 },
      FzfLuaPreviewNormal = { bg = cat_colors.mantle },
      FzfLuaBorder = { bg = cat_colors.surface0, fg = cat_colors.surface0 },
      FzfLuaPreviewBorder = { bg = cat_colors.mantle, fg = cat_colors.mantle },
      FzfLuaTitle = { bg = cat_colors.pink, fg = cat_colors.mantle },
      FzfLuaPreviewTitle = { bg = cat_colors.green, fg = cat_colors.mantle },
    }

    for hl, col in pairs(FzfColors) do
      vim.api.nvim_set_hl(0, hl, col)
    end
  end
}
