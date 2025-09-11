return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>zf", mode = { "n" }, function() require("fzf-lua").files() end,        desc = "Find files" },
    { "<leader>zg", mode = { "n" }, function() require("fzf-lua").live_grep() end,    desc = "Live grep in all files" },
    { "<leader>zs", mode = { "n" }, function() require("fzf-lua").lgrep_curbuf() end, desc = "Live grep in current file" },
    { "<leader>zb", mode = { "n" }, function() require("fzf-lua").buffers() end,      desc = "Find buffers" },
    { "<leader>zh", mode = { "n" }, function() require("fzf-lua").helptags() end,     desc = "Find help tags" },
    { "<leader>zc", mode = { "n" }, function() require("fzf-lua").colorschemes() end, desc = "Find colorschemes" },
    { "<leader>zz", mode = { "n" }, function() vim.cmd("FzfLua") end,                 desc = "Open Fzf menu" },
  },
  config = function()
    require("fzf-lua").setup({
      'default',
      fzf_colors = true,
      files = {
        formatter = "path.filename_first"
      },
      winopts = {
        title_flags = true
      },
      keymap = {
        fzf = {
          true,
        }
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
